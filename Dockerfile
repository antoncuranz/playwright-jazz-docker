# renovate: datasource=npm depName=@antoncuranz/jazz-run
ARG JAZZ_VERSION="1.0.2"

FROM mcr.microsoft.com/playwright:v1.56.1-noble

RUN \
    apt-get update && \
    apt-get -y install git-lfs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN \
    npm install -g jazz-run@${JAZZ_VERSION} && \
    npm cache clean --force
