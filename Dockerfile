# choose the image to start from (this has R 4.4.1 and tidyverse)
FROM rocker/tidyverse:4.4.1

ARG GITHUB_PAT
ENV GITHUB_PAT=${GITHUB_PAT}

 RUN R -e "install.packages('remotes')"                                                                                                       
 RUN R -e "remotes::install_github('maurolepore/private', auth_token = Sys.getenv('GITHUB_PAT'))"

# copy the files from this repo to the image
COPY /src /

# install the needed R packages
RUN Rscript setup.R

# run shiny that is open on the port 80 (HTTP) to external traffic (host)
ENTRYPOINT ["Rscript","main.R"]

