#!/bin/bash

# USAGE
# ./convert_auspice.py pandoc-example.md library.bib

INPUT=$1
BIB=$2
CSL=$3
CSS=$4
TEMPLATE=$5
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Setup

## Bibliography
bib=`basename $BIB`
cp $BIB $bib;

## CSL
csl=`basename $CSL`
cp $CSL $csl;


# 1. Convert Wikilinks
echo "Converting Wikilinks..."
input=$INPUT;
output="${input%.*}_convert.md"
python3 ${SCRIPT_DIR}/convert_wikilinks.py -i $input -o $output;

# 2. Render to Markdown
echo "Rendering new markdown..."
input=$output;
output="${input%.*}_self.md"

# Put the pandoc-doi2bib filter before citeproc
# Put pandoc-crossref before citeproc
pandoc \
  -s ${input} \
  -o $output \
  --filter pandoc-crossref \
  --citeproc \
  -t markdown-citations-simple_tables-multiline_tables-grid_tables \

# 3. Cleanup Markdown
echo "Cleaning markdown..."
input=$output;
output="${input%.*}_clean.md"
# For no brackets numeric
# sed -E 's/\^(.)\^/<sup>\1<\/sup>/g' | \

# For brackets numeric

grep -v ":::" $input | \
  sed -E 's/\^\\\[(.)\\\]\^/<sup>\1<\/sup>/g' | \
  sed 's/{#references .unnumbered}//g' | \
  sed 's/authors:/author:/g' | \
  sed 's/^[#]/##/g' | \
  grep -v "\pagebreak" \
  > $output;

# 4. Convert to HTML
echo "Converting to HTML..."
input=$output;
output="${input%.*}.html"
pandoc \
  -s $input \
  -o $output \
  -c $CSS \
  --template $TEMPLATE \
  --toc \
  --toc-depth=2

# 5. Cleanup
echo "Cleaning up intermediate files..."
# Rename final md and html
prefix="${INPUT%.*}"
#mv ${input} ${prefix}_auspice.md
mv $output ${prefix}.html
# Remove files
rm -f ${prefix}_convert*;
rm -f $bib;
rm -f $csl;


echo "All done!"
