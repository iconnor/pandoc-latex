#!/bin/bash

# Run this after building the docker container
# e.g. docker run -u root:1001 --rm -v $(pwd):/usr/app iconnor/pandoc-latex "./convert.sh"

for md_file in *.md; do
    pdf_file="${md_file%.md}.pdf"
    echo "Converting $md_file to $pdf_file"
    pandoc "$md_file" -o "$pdf_file" --pdf-engine=xelatex
done

