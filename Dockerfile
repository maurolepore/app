FROM rocker/tidyverse:4.4.1 AS build_stage

ARG GITHUB_PAT
ENV GITHUB_PAT=${GITHUB_PAT}

RUN Rscript -e "install.packages('pak')"

RUN Rscript -e "pak::pak('maurolepore/private')"

FROM rocker/tidyverse:4.4.1 AS final_stage

COPY --from=build_stage /usr/local/lib/R/site-library /usr/local/lib/R/site-library

COPY --from=build_stage /usr/local/lib/R/library /usr/local/lib/R/library

COPY /src /

# run shiny that is open on the port 80 (HTTP) to external traffic (host)
ENTRYPOINT ["Rscript","main.R"]

