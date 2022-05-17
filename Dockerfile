FROM ubuntu:20.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --no-install-suggests -y \
         vim git curl wget \
         python3 python3-pip \
    && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* # clean up

ARG UID=1000
RUN useradd -m -u ${UID} josh
USER josh

WORKDIR /workspace

# You can append more instructions from here.
