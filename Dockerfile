FROM scratch

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="ivandreyv" \
    architecture="aarch64" \
    alpine-version="3.20.3" \
    build="27-Nov-2024" \
    org.opencontainers.image.title="alpine" \
    org.opencontainers.image.description="Container image running Alpine Linux" \
    org.opencontainers.image.authors="ivandreyv" \
    org.opencontainers.image.vendor="ivandreyv" \
    org.opencontainers.image.version="3.20.3" \
    org.opencontainers.image.url="https://github.com/ivandreyv/docker-alpine" \
    org.opencontainers.image.source="" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

ADD alpine-minirootfs-3.20.3-aarch64.tar.gz /
CMD ["/bin/sh"]


