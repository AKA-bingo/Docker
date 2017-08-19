<<<<<<< HEAD
FROM ubuntu:14.04

MAINTAINER BinGo

#更换源
#ADD sources.list /etc/apt/sources.list./

# 更新源
RUN apt-get update    

# 安装常用软件
RUN apt-get update && apt-get install -y git tar wget curl python-dev ncurses-dev ctags && rm -rf /var/lib/apt/lists/*

WORKDIR /root/vim

RUN ./configure --with-features=huge \
	--enable-multibyte \
	--enable-rubyinterp \
	--enable-pythoninterp \
	--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
	--enable-perlinterp \
	--enable-luainterp \
	--enable-gui=gtk2 --enable-cscope --prefix=/usr \
	&& make VIMRUNTIMEDIR=/usr/share/vim/vim80 \
	&&make install

WORKDIR /root/

# 设置个人配置
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

RUN git clone https://github.com/AKA-bingo/config && sh config/setup.sh

CMD ["/bin/bash"]