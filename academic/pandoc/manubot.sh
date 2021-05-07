#!/bin/bash

#USAGE ./manubot.sh input.md

INPUT=$1
BIB=$2
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ROOTSTOCK_DIR="rootstock"

# Convert Wikilinks
${SCRIPT_DIR}/convert_wikilinks.py --input "$INPUT" --output ${ROOTSTOCK_DIR}/output/manuscript.md

# Copy over bibliography
# This is deliberately not in the output directory
cp $BIB ${ROOTSTOCK_DIR}/

# Change to rootstock directory since relative links will be used
cwd=`pwd`
cd ${ROOTSTOCK_DIR};

# Export PDF
output="${cwd}/${INPUT%.*}.pdf";
echo "Exporting PDF $output ..."
pandoc --data-dir=build/pandoc --defaults=common.yaml --defaults=html.yaml --defaults=pdf-weasyprint.yaml
mv output/manuscript.pdf "$output";

# Export HTML
output="${cwd}/${INPUT%.*}.html";
echo "Exporting HTML $output ..."
pandoc --data-dir=build/pandoc --defaults=common.yaml --defaults=html.yaml
mv output/manuscript.html "$output"

# Export DOCX
output="${cwd}/${INPUT%.*}.docx";
echo "Exporting DOCX $output ..."
pandoc --data-dir=build/pandoc --defaults=common.yaml --defaults=docx.yaml
mv output/manuscript.docx "$output"

#Cleanup
cd $cwd
rm ${ROOTSTOCK_DIR}/$BIB
rm ${ROOTSTOCK_DIR}/output/manuscript.md
