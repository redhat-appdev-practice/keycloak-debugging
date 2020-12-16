#!/bin/bash

## While loop which will detect when the ADOC file has changed and trigger a re-render to PDF

while [[ 1 -eq 1 ]]; do
  watch -g 'stat -c %Y README.adoc'
  asciidoctor-pdf README.adoc -o instructions.pdf
done
