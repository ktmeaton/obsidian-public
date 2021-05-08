#!/bin/bash

#USAGE ./manubot.sh input.md

INPUT=$1
BIB=$2
ROOTSTOCK_DIR="${3:-rootstock}"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Convert Wikilinks
input="$INPUT"
output=${ROOTSTOCK_DIR}/content/01.manuscript.md
${SCRIPT_DIR}/convert_wikilinks.py --input "$input" --output $output


# Copy over bibliography
cp $BIB ${ROOTSTOCK_DIR}/content/manual-references.json
# For .bib this is deliberately not in the output directory
#cp $BIB ${ROOTSTOCK_DIR}/

# Strip out the Frontmatter
echo "Preparing frontmatter..."
input=$output
output=${ROOTSTOCK_DIR}/content/metadata.yaml
start=`grep -n -m 2 "\---" $input | cut -d ":" -f 1 | head -n 1`;
end=`grep -n -m 2 "\---" $input | cut -d ":" -f 1 | tail -n+2`;
tail -n+`expr $start + 1` $input | head -n `expr $end - $start - 1` > $output;

# Change to rootstock directory since relative links will be used
cwd=`pwd`
cd ${ROOTSTOCK_DIR};

# Build manuscripts
echo "Building manuscript..."
build/build.sh

#Cleanup
cp -f output/manuscript.html ${cwd}/"${INPUT%.*}".html
cp -f output/manuscript.pdf ${cwd}/"${INPUT%.*}".pdf
cp -f output/manuscript.docx ${cwd}/"${INPUT%.*}".docx

rm output/*.{pdf,html,tsv,json,docx} output/manuscript.md
rm content/01.manuscript.md
rm content/manual-references.json
rm content/metadata.yaml
