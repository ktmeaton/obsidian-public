#!/bin/bash

#USAGE ./manubot.sh input.md

# -----------------------------------------------------------------------------
# Argument Parsing
# -----------------------------------------------------------------------------
# Credit: Bruno Bronosky & Mateen Ulhaq
# Source: https://stackoverflow.com/a/14203146

# Default Arguments
INPUT="Manubot.md"
BIB="pandoc/bib/library.json"
ROOTSTOCK_DIR="../../rootstock"
LUA_DIR="pandoc/lua-filters"
DEFAULT_CSL="${ROOTSTOCK_DIR}/build/assets/default.csl"
CSL="${DEFAULT_CSL}"
DEFAULT_TEMPLATE="${ROOTSTOCK_DIR}/templates/default"
TEMPLATE="${DEFAULT_TEMPLATE}"
PDF=false
DOCX=false
LATEX=false
TEST=false

POSITIONAL_ARGS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    # -------------------------------------------------------------------------
    # Help
    -h|--help)
      echo "Typset Obsidian notes using Manubot."
      shift # past argument
      exit
      ;;
    # -------------------------------------------------------------------------
    # Test
    --test)
      TEST=true
      shift # past argument
      ;;         
    # -------------------------------------------------------------------------
    # Markdown File
    -i|--input)
      INPUT="$2"
      if [[ ! -e $INPUT ]]; then
        echo "Input does not exist: $INPUT"
        exit 1
      fi
      shift # past argument
      shift # past value
      ;;
    # -------------------------------------------------------------------------      
    # Bibliography
    -b|--bib)
      BIB="$2"
      if [[ ! -e $BIB ]]; then
        echo "Bibliography does not exist: $BIB"
        exit 1
      fi      
      shift # past argument
      shift # past value
      ;;
    # -------------------------------------------------------------------------      
    # Rootstock Directory
    -r|--rootstock)
      ROOTSTOCK_DIR="$2"
      if [[ ! -e $ROOTSTOCK_DIR ]]; then
        echo "Rootstock does not exist: $ROOTSTOCK_DIR"
        exit 1
      fi      
      shift # past argument
      shift # past value
      ;;
    # -------------------------------------------------------------------------      
    # Lua Directory
    --lua-dir)
      LUA_DIR="$2"
      if [[ ! -e $LUA_DIR ]]; then
        echo "Lua filters do not exist: $LUA_DIR"
        exit 1
      fi      
      shift # past argument
      shift # past value
      ;;          
    # -------------------------------------------------------------------------       
    # CSL
    -c|--csl)
      CSL="$2"
      if [[ ! -e $CSL ]]; then
        echo "CSL does not exist: $CSL"
        exit 1
      fi      
      shift # past argument
      shift # past value
      ;;
    # -------------------------------------------------------------------------      
    # Template
    -t|--template)
      TEMPLATE="$2"
      if [[ ! -e $TEMPLATE ]]; then
        echo "Template does not exist: $TEMPLATE"
        exit 1
      fi      
      shift # past argument
      shift # past value
      ;;
    # -------------------------------------------------------------------------      
    # Include Files
    --include)
      INCLUDE_FILES="$2"  
      shift # past argument
      shift # past value
      ;;      
    # -------------------------------------------------------------------------      
    # PDF Output
    --pdf)
      PDF=true 
      shift # past argument
      ;;
    # -------------------------------------------------------------------------      
    # DOCX Output
    --docx)
      DOCX=true 
      shift # past argument
      ;;
    # -------------------------------------------------------------------------      
    # LATEX Output
    --latex)
      LATEX=true 
      shift # past argument
      ;;
    # -------------------------------------------------------------------------             
    # Unknown Options
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    # -------------------------------------------------------------------------      
    # Positional Arguments      
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
    # -------------------------------------------------------------------------      
  esac
done

# restore positional parameters
set -- "${POSITIONAL_ARGS[@]}"

# -----------------------------------------------------------------------------
# Setup
# -----------------------------------------------------------------------------

echo "manubot.sh was configured with the following parameters:"
echo "  Input:         ${INPUT}"
echo "  Bibliography:  ${BIB}"
echo "  Rootstock:     ${ROOTSTOCK_DIR}"
echo "  Lua Filters:   ${LUA_DIR}"
echo "  CSL:           ${CSL}"
echo "  Template:      ${TEMPLATE}"
echo "  Include Files: ${INCLUDE_FILES}"
echo "  PDF:           ${PDF}"
echo "  DOCX:          ${DOCX}"
echo "  LATEX:         ${LATEX}"
echo ""

if [[ $TEST == true ]]; then
  exit
fi

# Copy over csl
if [[ $CSL != $DEFAULT_CSL ]]; then
  cp $CSL $DEFAULT_CSL
fi;

# Extend lua dir path
LUA_DIR=`pwd`/$LUA_DIR

# Remove old content dir
rm -rf ${ROOTSTOCK_DIR}/content/
# Copy over template
cp -r $TEMPLATE ${ROOTSTOCK_DIR}/content/

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Convert Wikilinks
input="$INPUT"
output=${ROOTSTOCK_DIR}/content/01.manuscript.md.tmp
${SCRIPT_DIR}/convert_wikilinks.py --input "$input" --output ${output}

# Copy over bibliography
cp $BIB ${ROOTSTOCK_DIR}/content/manual-references.json
# For .bib this is deliberately not in the output directory
#cp $BIB ${ROOTSTOCK_DIR}/


# Copy Over Files to Include
arrINCLUDE=(${INCLUDE_FILES//,/ })
for filename in ${arrINCLUDE[@]}; do
  # Check if it exists
  if [[ ! -e $filename ]]; then
    echo "Include file does not exist: $filename"
    exit
  else
  cp $filename ${ROOTSTOCK_DIR}
  fi
done


# Copy over images
cp -r ${ROOTSTOCK_DIR}/build/assets/images ${ROOTSTOCK_DIR}/content/

# Strip out the Frontmatter
echo "Preparing frontmatter..."
input=${output}
output=${ROOTSTOCK_DIR}/content/metadata.yaml

# Add the frontmatter from the input markdown file
start=`grep -n -m 2 "\---" $input | cut -d ":" -f 1 | head -n 1`;
end=`grep -n -m 2 "\---" $input | cut -d ":" -f 1 | tail -n+2`;
tail -n+`expr $start + 1` $input | head -n `expr $end - $start - 1` > $output;

# Add the last commit

hash=`git log -n 1 --pretty=format:%H -- "$INPUT" | awk '{print substr($0,1,8)}'`
echo "commit: $hash" >> $output;

echo "Stripping frontmatter from markdown..."
output=${input%.*}
tail -n+`expr $end + 1` $input > ${output}

# Change to rootstock directory since relative links will be used
cwd=`pwd`

# Tell Manubot to use resources in the cwd (ie obsidian vault)
export RESOURCE_DIR=$cwd
cd ${ROOTSTOCK_DIR};

# -----------------------------------------------------------------------------
# Build
# -----------------------------------------------------------------------------

# Export Build Parameters
export BUILD_PDF=$PDF
export BUILD_DOCX=$DOCX
export BUILD_LATEX=$LATEX
export LUA_DIR=$LUA_DIR

echo "Building manuscript..."
build/build.sh

# Copy output to current working directory
exts=("html" "pdf" "docx" "latex")
for ext in ${exts[@]}; do
  if [[ -e output/manuscript.${ext} ]]; then
    cp -f output/manuscript.${ext} ${cwd}/"${INPUT%.*}".${ext}
  fi
done;

# -----------------------------------------------------------------------------
# Cleanup
# -----------------------------------------------------------------------------

# Restore default content
rm -rf content/
cp -r templates/default content

# Restore default csl
cp -r build/assets/default.csl build/assets/style.csl

# Remove output
rm -rf output/


