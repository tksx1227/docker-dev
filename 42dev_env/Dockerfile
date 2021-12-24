# base image
FROM ubuntu:20.04

# system update
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get clean

# enable manpages
RUN rm /etc/dpkg/dpkg.cfg.d/excludes

# unminimize default packages
RUN apt-get update && yes | unminimize

# set locale
RUN apt-get -y update && apt-get install -y language-pack-ja-base language-pack-ja locales
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8

# shift timezone to Asia/Tokyo
RUN apt-get -y update && apt-get install -y tzdata && \
    rm -rf /var/lib/apt/lists/*
ENV TZ Asia/Tokyo

# install manpages with manuals(EN)
RUN apt-get -y update && apt-get install -y man man-db manpages manpages-posix manpages-posix-dev manpages-dev

# BASE packages
RUN apt-get -y update && apt-get install -y \
    build-essential sudo git \
    software-properties-common \
    wget ctags tar zip unzip tree \
    curl vim

# install python3
RUN apt-get -y update && apt-get install -y \
    python3 python3-pip

# Formatter for c
RUN apt-get -y update && apt-get install -y \
    clang-format

# linter for c
RUN apt-get -y update && apt-get install -y \
    clang clangd-12
RUN update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

# install node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash
RUN apt-get install -y nodejs

# install tmux
RUN apt-get -y update && apt-get install -y tmux

# install norminette
RUN python3 -m pip install --upgrade pip setuptools
RUN python3 -m pip install norminette
RUN python3 -m pip install --upgrade norminette

# create user
ARG DOCKER_USER=[your_username_inside_docker]
ARG DOCKER_PASSWORD=[your_password_inside_docker]

RUN useradd -m ${DOCKER_USER} && echo "${DOCKER_USER}:${DOCKER_PASSWORD}" | chpasswd && \
echo "${DOCKER_USER} ALL=(ALL) ALL" >> /etc/sudoers

# change user
USER ${DOCKER_USER}
WORKDIR /home/${DOCKER_USER}
