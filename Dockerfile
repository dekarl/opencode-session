FROM ghcr.io/anomalyco/opencode:1.18.32

USER root

RUN apk --no-cache add jq git go npm \
    && addgroup -g 1000 opencode \
    && adduser -u 1000 -G opencode -D opencode

# stating USER before WORKDIR means the directory is created with the non-root proper ownership
USER opencode
WORKDIR /home/opencode
ENTRYPOINT ["/bin/sh"]
