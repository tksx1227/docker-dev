# Base image
FROM ubuntu:latest

# Unminimize
RUN yes | unminimize

# Install packages
RUN apt-get update && apt-get install -y \
    build-essential \
    clang \
    clangd-12 \
    clang-format \
    ctags \
    curl \
    git \
    language-pack-ja-base \
    man \
    python3-pip \
    sudo \
    tar \
    tmux \
    tree \
    unzip \
    vim \
    wget \
    zip
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y software-properties-common

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash && \
    apt-get install -y nodejs

# Install Vim plugin manager
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install norminette
RUN pip install --upgrade pip setuptools && \
    pip install norminette

# Clean cached
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV LANG=ja_JP.utf8 \
    TZ=Asia/Tokyo \
    USER=<42_user_name> \
    MAIL=<42_email>

# Set user
ARG DOCKER_USER=<user_name> \
    DOCKER_PASSWORD=<password>
RUN useradd -m ${DOCKER_USER} && \
    echo "${DOCKER_USER}:${DOCKER_PASSWORD}" | chpasswd && \
    echo "${DOCKER_USER} ALL=(ALL) ALL" >> /etc/sudoers
USER ${DOCKER_USER}

# Change working directory
WORKDIR /home/${DOCKER_USER}

ENTRYPOINT ["bash"]