#构建一个自动将github项目下的Dockerfile生成对应镜像并推送到hybingo/develop仓库
FROM ubuntu:14.04

FROM ubuntu:14.04

MAINTAINER BinGo <icebin000@gmail.com>

# 更新源
RUN apt-get update

RUN apt-get update && apt-get install -y git docker.io && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/AKA-bingo/Docker \
	&& docker build -t hybingo/develop:ubuntu-14.04 Docker/ubuntu/. \
	&& docker build -t hybingo/develop:mysql-5.6 Docker/mysql/. \
	&& docker push hybingo/develop:ubuntu-14.04 \
	&& docker push hybingo/develop:mysql-5.6 \
	&& rm -rf Docker