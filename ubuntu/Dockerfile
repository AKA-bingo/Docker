FROM ubuntu:14.04

MAINTAINER BinGo

#更换源
ADD sources.list /etc/apt/sources.list./

# 更新源
RUN apt-get update    

# 安装常用软件
RUN apt-get update && apt-get install -y git vim tar wget curl && rm -rf /var/lib/apt/lists/*

# 设置个人配置
RUN git clone https://github.com/AKA-bingo/config && sh config/setup.sh

WORKDIR config/

RUN ./setup.sh

WORKDIR ~

RUN rm -rf config

CMD ["/bin/bash"]
