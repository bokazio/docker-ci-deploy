FROM debian:buster-slim

LABEL vendor="bokazio" origin="https://github.com/bokazio/docker-ci-deploy"

# Install Build & Deployment Tools
RUN apt-get update && apt-get install -y \
  rsync \
  git \
  build-essential \
  ruby-full 

# Install SASS Compiler
RUN gem install sass

# Clean up image
RUN apt-get remove build-essential -y && apt-get autoremove -y && apt-get clean