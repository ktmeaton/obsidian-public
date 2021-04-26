#!/usr/bin/env python3

import click

@click.command()
@click.help_option("--help", "-h")
@click.option(
    "-i",
    "--input",
    help="Input markdown file.",
    type=click.Path(exists=True, dir_okay=False, allow_dash=True),
    show_default=True,
)
@click.option(
    "-o",
    "--output",
    help="Output markdown file.",
    show_default=True,
)
@click.pass_context
def main(
    ctx,
    input: str,
    output: str,
):
    """This script converts wikilinks in markdown to plain text."""

    if not input and not output:
        click.echo(ctx.get_help())        
        quit()

    # Save up a string for the output file.
    output_str = ""
    # Read in the input file.
    with open(input) as infile:
        # Read the first line
        read_line = infile.readline()
        # Continue through line by line
        while read_line:
            # Strip characters from the end like extra new lines.
            # Only from the right side, left is presumed informative
            read_line = read_line.rstrip()
            link_dict = {}
            in_link = False
            in_alias = False
            link_text = ""
            alias_text = ""
            for i in range(0,len(read_line)):
                
                # Check if the link/alias is over

                if len(read_line) > i+1 and read_line[i] == "]" and read_line[i+1] == "]":
                    in_link = False  
                    in_alias = False
                    link_dict[link_text] = alias_text
                    # Reset stored links and aliases
                    link_text = ""
                    alias_text = ""                    

                # Check if currently in an alias
                if in_alias:
                    alias_text += read_line[i]

                # Check for an alias
                if read_line[i] == "|" and in_link:
                    in_link = False
                    in_alias = True

                # Check if the current char is a link text
                if in_link:
                    link_text += read_line[i]
                
                # Check if the next char will be the start of a link
                if read_line[i] == "[" and read_line[i-1] == "[":
                    in_link = True 
            
            # If links were found in this line
            if len(link_dict) > 0:
                for link in link_dict:
                    # Replace aliased links with the alias name
                    if link_dict[link]:
                        target = link + "|" + link_dict[link]
                        replacement = link_dict[link]
                    else:
                        target = link
                        replacement = link
                    # Replace the target with replacement
                    read_line = read_line.replace("[[" + target + "]]", replacement)                   

            # I may regret this, but add 2 blank spaces at the end to enable line breaks
            output_str += read_line + "  " + "\n"
            read_line = infile.readline()

    if output:
        with open(output, "w") as outfile:
            outfile.write(output_str)
    else:
        print(output_str)
if __name__ == "__main__":
    main()