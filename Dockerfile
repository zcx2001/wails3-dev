ARG NODE_VERSION=24.22.1

FROM node:${NODE_VERSION}

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends build-essential pkg-config libgtk-4-dev libwebkitgtk-6.0-dev && \
    rm -rf /var/lib/apt/lists/*