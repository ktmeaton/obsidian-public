#!/usr/bin/bash
# Compile Chapters

BIB="pandoc/bib/library.bib"
CSL="pandoc/csl/apa.csl"

dissertation="PhD_Dissertation_Template.md"
chapters=("NCBImeta_Paper.md" "Plague_Denmark_Paper.md")
cwd=`pwd`/

# ------------------------------------------------------------
echo "Compiling Chapters:"

for chapter in ${chapters[@]};
do
    echo -e "\t"$chapter;
    chapter_convert=${chapter%.*}_convert.md;
    chapter_compile=${chapter%.*}_compile.md;
    pandoc/convert_wikilinks.py --input "$chapter" --output "$chapter_convert"
    pandoc \
       $chapter_convert \
       -o ${chapter_compile}.tmp \
       --bibliography=$BIB \
       --csl=$CSL \
       --filter pandoc-crossref \
       --citeproc \
       -t markdown-raw_html-citations-native_divs-native_spans;
       #-f markdown-implicit_figures \       
    grep -v ":::" ${chapter_compile}.tmp > ${chapter_compile}
done

# ------------------------------------------------------------
echo "Compiling Dissertation."

dissertation_compile_md=${dissertation%.*}_compile.md;
dissertation_compile_pdf=${dissertation%.*}.pdf;

# Compile the dissertation from markdown to markdown
pandocomatic $dissertation;
# Change the output format from markdown to pdf
sed -i 's/to: markdown/to: pdf/g' compile.md;
sed -i 's/compile\.md/compile\.pdf/g' compile.md;
# Replace paths that have been prefixed with the cwd
sed -i "s|$cwd||g" compile.md;
# Remove Prefixes of Figures
sed -i 's/Figure [0-9]*: //g' compile.md;
# Remove Prefixes of Tables
sed -i 's/Table [0-9]*: //g' compile.md;
# Rename the generic named markdown
mv compile.md ${dissertation_compile_md};
# Final compilation
pandocomatic ${dissertation_compile_md};
mv compile.pdf $dissertation_compile_pdf;
