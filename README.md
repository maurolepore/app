# app

A minimal, containarized shiny app based on https://github.com/jnolis/shiny-docker/. It demonstrates how to install an R package from a private GitHub repository. 

You need a GitHub token. This example uses it by setting the environment variable `GITHUB_PAT` in the Dockerfile, and you pass it as an argument when you build the image.
