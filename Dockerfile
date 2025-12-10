# renovate: datasource=npm depName=@antoncuranz/jazz-run
ARG JAZZ_VERSION="0.19.10"

FROM mcr.microsoft.com/playwright:v1.57.0-noble

RUN \
    apt-get update && \
    apt-get -y install git-lfs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN --mount=type=secret,id=github_token \
    echo "@antoncuranz:registry=https://npm.pkg.github.com" > ~/.npmrc && \
    echo "//npm.pkg.github.com/:_authToken=$(cat /run/secrets/github_token)" >> ~/.npmrc && \
    npm install -g @antoncuranz/jazz-run@${JAZZ_VERSION} && \
    rm ~/.npmrc
