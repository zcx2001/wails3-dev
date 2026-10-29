ARG NODE_VERSION=24.22.1

FROM node:${NODE_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

# 修正中文显示
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# golang设置
ENV GOPATH=/root/go
ENV PATH="${PATH}:/usr/local/go/bin:${GOPATH}/bin"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        build-essential \
        pkg-config \
        libgtk-4-dev \ 
        libwebkitgtk-6.0-dev \
        tzdata && \
    locale-gen en_US.UTF-8 && \
    rm -rf /var/lib/apt/lists/*