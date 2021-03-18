FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
         vim git curl wget \
         python3 python3-pip \
    && apt-get clean

ARG UID=1000
RUN useradd -m -u ${UID} josh
USER josh

WORKDIR /workspace

# You can append more instructions from here.
