# choose the image to start from (this has R 4.4.1 and tidyverse)
FROM rocker/tidyverse:4.4.1

# copy the files from this repo to the image
COPY /src /

# Define a build argument for the GitHub PAT
ARG GITHUB_PAT

# Set the GitHub PAT as an environment variable inside the container
ENV GITHUB_PAT=${GITHUB_PAT}

# install the needed R packages
RUN Rscript setup.R

# run shiny that is open on the port 80 (HTTP) to external traffic (host)
ENTRYPOINT ["Rscript","main.R"]

