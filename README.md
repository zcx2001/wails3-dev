# wails3 容器开发环境
[![Docker Publish](https://github.com/zcx2001/wails3-dev/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/zcx2001/wails3-dev/actions/workflows/docker-publish.yml)

用nodes `24.22.1` 镜像集成golang `1.27.3`开发环境。

# 容器开发需要设定的环境变量
指定绑定IP和端口号
```shell
WAILS_SERVER_HOST=0.0.0.0 \
WAILS_SERVER_PORT=8080 \
wails3 task run:server
```