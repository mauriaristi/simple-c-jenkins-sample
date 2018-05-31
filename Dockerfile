# Customize the official Debian container to allow Pipeline building of MMG
# David Sherman 2017-02-07

FROM debian

USER root

## Standard build tools
RUN apt-get update && \
    apt-get install -y sudo build-essential git cmake
