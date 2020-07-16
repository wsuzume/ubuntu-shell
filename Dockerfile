FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install --no-install-recommends -y git python3 python3-pip \
    && apt-get clean

WORKDIR /workspace
