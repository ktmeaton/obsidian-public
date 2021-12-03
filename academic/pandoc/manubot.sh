#!/bin/bash

#USAGE ./manubot.sh input.md

INPUT=$1
BIB=$2
ROOTSTOCK_DIR="${3:-rootstock}"
CSL="${4:-${ROOTSTOCK_DIR}/build/assets/style.csl}"

# Backup default rootstock csl
DEFAULT_CSL=${ROOTSTOCK_DIR}/build/assets/style.csl
cp $DEFAULT_CSL ${DEFAULT_CSL}.bak

# Copy over custom csl
if [[ $CSL != $DEFAULT_CSL ]]; then
  cp $CSL $DEFAULT_CSL
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Convert Wikilinks
input="$INPUT"
output=${ROOTSTOCK_DIR}/content/01.manuscript.md.tmp
${SCRIPT_DIR}/convert_wikilinks.py --input "$input" --output ${output}


# Copy over bibliography
cp $BIB ${ROOTSTOCK_DIR}/content/manual-references.json
# For .bib this is deliberately not in the output directory
#cp $BIB ${ROOTSTOCK_DIR}/

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

# Build manuscripts
echo "Building manuscript..."
build/build.sh

# Restore default csl
mv build/assets/style.csl.bak build/assets/style.csl

#Cleanup
cp -f output/manuscript.html ${cwd}/"${INPUT%.*}".html
cp -f output/manuscript.pdf ${cwd}/"${INPUT%.*}".pdf
cp -f output/manuscript.docx ${cwd}/"${INPUT%.*}".docx

#rm output/*.{pdf,html,tsv,json,docx} output/manuscript.md
#rm content/01.manuscript.md
rm content/01.manuscript.md.tmp
rm content/manual-references.json
rm content/metadata.yaml
