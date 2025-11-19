# renovate: datasource=npm depName=jazz-run
ARG JAZZ_VERSION="0.19.3"

FROM mcr.microsoft.com/playwright:v1.56.1-noble

RUN \
    apt-get update && \
    apt-get -y install git-lfs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN \
    npm install -g jazz-run@${JAZZ_VERSION} && \
    npm cache clean --force
