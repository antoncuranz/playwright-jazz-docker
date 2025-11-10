# syntax=docker/dockerfile:1

# renovate: datasource=npm depName=jazz-run
ARG JAZZ_VERSION="0.19.1"

# renovate: datasource=npm depName=playwright
ARG PLAYWRIGHT_VERSION="1.56.0"

FROM node:22.21.1-bookworm

WORKDIR /app

RUN \
    npx -y playwright@${PALYWRIGHT_VERSION} install --with-deps chromium && \
    npm install -g jazz-run@${JAZZ_VERSION} && \
    npm cache clean --force

