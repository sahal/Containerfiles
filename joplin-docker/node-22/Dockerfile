FROM node:22 AS build

ARG JOPLIN_VERSION=3.1.24

RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    g++ \
    dumb-init \
    build-essential \
    libcairo2-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    python3 \
    wget \
    rsync \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/node/
COPY github.cer .

# super annoying to get this file over and over again
# lets put it in a layer
##RUN wget \
##    --quiet \
##    --ca-certificate=github.cer \
##    --no-clobber \
##    "https://github.com/laurent22/joplin/archive/refs/tags/v${JOPLIN_VERSION}.tar.gz" \
##    -O joplin.tar.gz
##
#COPY joplin-3.1.24-modified.tar.gz ./joplin.tar.gz

COPY install.sh .
