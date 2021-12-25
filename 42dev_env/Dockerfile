# Base image
FROM ubuntu:latest

# Unminimize
RUN yes | unminimize

# Install packages
RUN apt-get update && apt-get install -y \
    clang \
    clangd-12 \
    clang-format \
    ctags \
    curl \
    git \
    language-pack-ja-base \
    man \
    python3-pip \
    tar \
    tmux \
    tree \
    unzip \
    vim \
    zip
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y software-properties-common

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash && \
    apt-get install -y nodejs

# Install norminette
RUN pip install --upgrade pip setuptools && \
    pip install norminette

# Clean cached
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV LANG=ja_JP.utf8 \
    TZ=Asia/Tokyo

# Set user
ARG DOCKER_USER=<user_name> \
    DOCKER_PASSWORD=<password>
RUN useradd -m ${DOCKER_USER} && \
    echo "${DOCKER_USER}:${DOCKER_PASSWORD}" | chpasswd && \
    echo "${DOCKER_USER} ALL=(ALL) ALL" >> /etc/sudoers
USER ${DOCKER_USER}

# Change working directory
WORKDIR /home/${DOCKER_USER}

CMD ["bash"]