ARG BUILD_FROM=ubuntu
FROM ${BUILD_FROM} as BUILD_IMAGE

ENV DEBCONF_NONINTERACTIVE_SEEN=true \
    DEBIAN_FRONTEND=noninteractive \
    LC_ALL=C.UTF-8 \
    LANG=en_US.utf8 \
    TZ=America/Los_Angeles

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y git nfs-kernel-server nfs-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
