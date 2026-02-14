FROM caddy:2

ARG TARGETOS
ARG TARGETARCH

# Buildx sets TARGETOS/TARGETARCH for each platform build
COPY dist/${TARGETOS}_${TARGETARCH}/caddy /usr/bin/caddy

# optional sanity check
RUN caddy version
