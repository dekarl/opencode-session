FROM ghcr.io/anomalyco/opencode:2.0.10

USER root

RUN apk add jq git go npm

USER 1000
