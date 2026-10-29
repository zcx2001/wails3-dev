ARG NODE_VERSION=24.22.1

FROM node:${NODE_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

# 修正中文显示
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        build-essential \
        pkg-config \
        libgtk-4-dev \ 
        libwebkitgtk-6.0-dev \
        locales \
        tzdata && \
    locale-gen en_US.UTF-8 && \
    rm -rf /var/lib/apt/lists/*