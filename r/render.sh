#!/bin/sh
Rscript -e "rmarkdown::render('/home/rstudio/client.Rmd', output_format='md_document')"
cat /home/rstudio/client.md
