# Base image
FROM ubuntu:20.04

# Unminimize
RUN yes | unminimize

# Install packages
RUN rm /etc/dpkg/dpkg.cfg.d/excludes && \
    apt-get update && apt-get upgrade -y && apt-get install -y \
    clang \
    clangd-12 \
    clang-format \
    ctags \
    curl \
    git \
    language-pack-ja-base \
    man \
    python3-pip \
    software-properties-common \
    tar \
    tmux \
    tree \
    unzip \
    vim \
    zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash && \
    apt-get install -y nodejs

# Install norminette
RUN pip install --upgrade pip setuptools && \
    pip install norminette

# Set environment variables
ENV LANG=ja_JP.utf8 \
    TZ=Asia/Tokyo

# Set user
ARG DOCKER_USER=[your_username_inside_docker] \
    DOCKER_PASSWORD=[your_password_inside_docker]
RUN useradd -m ${DOCKER_USER} && \
    echo "${DOCKER_USER}:${DOCKER_PASSWORD}" | chpasswd && \
    echo "${DOCKER_USER} ALL=(ALL) ALL" >> /etc/sudoers
USER ${DOCKER_USER}

# Change working directory
WORKDIR /home/${DOCKER_USER}

CMD ["bash"]