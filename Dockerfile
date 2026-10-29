ARG NODE_VERSION=24.22.1

FROM node:${NODE_VERSION}

ARG TARGETARCH

ENV DEBIAN_FRONTEND=noninteractive

# 修正中文显示
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# golang设置
ARG GO_VERSION=1.27.3

ENV GOPATH=/root/go
ENV PATH="${PATH}:/usr/local/go/bin:${GOPATH}/bin"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        build-essential \
        pkg-config \
        libgtk-4-dev \ 
        libwebkitgtk-6.0-dev \
        tzdata && \
    curl -fsSL \
        "https://go.dev/dl/go${GO_VERSION}.linux-${TARGETARCH}.tar.gz" \
        -o /tmp/go.tar.gz && \
    rm -rf /usr/local/go && \
    tar -C /usr/local -xzf /tmp/go.tar.gz && \
    rm -f /tmp/go.tar.gz && \
    rm -rf /var/lib/apt/lists/*