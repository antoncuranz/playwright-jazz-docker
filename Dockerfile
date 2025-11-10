# syntax=docker/dockerfile:1

# renovate: datasource=npm depName=jazz-run
ARG JAZZ_VERSION="0.19.1"

FROM mcr.microsoft.com/playwright:v1.50.0-noble

WORKDIR /app

RUN \
    npm install jazz-run@${JAZZ_VERSION} && \
    npm cache clean --force

