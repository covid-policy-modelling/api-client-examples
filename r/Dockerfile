# Get a base R docker image
FROM rocker/rstudio:4.1.2

RUN apt-get update && apt-get install -y libxml2-dev

RUN Rscript -e "install.packages('httr')"
RUN Rscript -e "install.packages('rlist')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('rmarkdown')"

COPY client.Rmd /home/rstudio/client.Rmd
COPY render.sh /home/rstudio/render.sh
