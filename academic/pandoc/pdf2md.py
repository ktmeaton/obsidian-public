#!/usr/bin/env python3

import click
import os
import fitz
import re
import datetime


VERSION = "0.1.0"
# -----------------------------------------------------------------------------
# Main

@click.command()
@click.version_option(version=VERSION,)
@click.option('--pdf'         , default=None, help="PDF input for conversion.")
@click.option('--output-dir'  , default=".", help="Output directory.")

def main(
    pdf,
    output_dir,
):
    """Convert PDF to Markdown."""

    # Check if file exists
    if not pdf:
        ctx = click.get_current_context()
        click.echo(ctx.get_help())
        ctx.exit()

    if not os.path.exists(pdf):
        print("PDF does not exists", pdf)
        quit()

    # Check if output directory exists
    if not os.path.exists(output_dir):
        print("Creating output directory:", output_dir)
        os.mkdir(output_dir)

    pdf_prefix = os.path.splitext(os.path.basename(pdf))[0]
    output_file = os.path.join(output_dir, pdf_prefix + ".md")

    print("\n")   
    print("PDF:     ", pdf)
    print("Markdown:", output_file)     
    print("\n")

    # -------------------------------------------------------------------------
    # YAML Header
    today = datetime.datetime.today()

    yaml_header = """---
    - title: \"{title}\"
    - pdf2md: {version}
    - status: idea
    - type: Note
    - due: {today} 
    - time: 09:00
    ---
    """.format(
        title=pdf_prefix,
        version=VERSION,
        today=today.strftime("%Y-%m-%d")
    )

    yaml_header = yaml_header.replace("  ","")

    # -------------------------------------------------------------------------
    # Extract Text
    pdf_doc = fitz.open(pdf)

    raw_text = ""
    for page in pdf_doc:
        page_text = page.get_text()

        # -------------------------------------------------------------------------
        # Process Text        

        # Retain the literate utf-8 characters
        page_text = repr(page_text)

        # Remove unicode characters
        page_text = re.sub(r'[^\x00-\x7F]',' ', page_text)

        # "\n\uf0b7 \n" is a list element
        page_text = re.sub(r'( )+\\n\\uf0b7 \\n','\\n- ', page_text)      

        # Remove multiple occurences of whitespace
        page_text = re.sub(r' +',' ', page_text)

        # ' \n 1.' is a list element   
        # TO BE DONE BETTER
        for i in range(1,10):
            page_text = re.sub(r'\\n' + str(i) + '\.','\\n'  + str(i) + '.', page_text)

        # ' \n \n' are true content linebreaks: keep
        page_text = re.sub(r'\\n \\n','LINEBREAK', page_text)

        # ' \n' are aesthetic linebreaks: remove
        page_text = re.sub(r' \\n',' ', page_text)
        page_text = re.sub(r'\\n','', page_text)

        page_text = re.sub(r'( )*LINEBREAK( )*','\n', page_text)

        # Random quotes
        page_text = page_text.replace("'","").replace('"','')

        # Append
        raw_text += page_text

    # -------------------------------------------------------------------------
    # Export

    with open(output_file, "w") as outfile:
        outfile.write(yaml_header)
        outfile.write("\n")
        outfile.write(raw_text)  


if __name__ == "__main__":
    main()