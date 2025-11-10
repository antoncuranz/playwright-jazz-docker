# renovate: datasource=npm depName=jazz-run
ARG JAZZ_VERSION="0.19.1"

FROM mcr.microsoft.com/playwright:v1.56.1-noble

RUN \
    npm install -g jazz-run@${JAZZ_VERSION} && \
    npm cache clean --force
