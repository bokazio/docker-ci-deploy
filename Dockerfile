FROM debian:buster-slim

LABEL vendor="bokazio" origin="https://github.com/bokazio/docker-ci-deploy"

RUN apt-get update && apt-get install -y \
  rsync \
  git \
&& apt-get clean

 
