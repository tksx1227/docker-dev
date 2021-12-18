FROM ubuntu:latest

# Install packages
RUN apt-get update && apt-get install -y \
    python-opengl \
    vim \
    wget \
    x11-utils \
    xvfb

# Download and install Miniconda3
WORKDIR /opt
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    sh Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3 && \
    rm -f Miniconda3-latest-Linux-x86_64.sh

# Set environment variables
ENV PATH=/opt/miniconda3/bin:$PATH \
    DISPLAY=localhost:8888

# Install Python packages
RUN conda install -y \
    python=3.6 \
    jupyter \
    jupyterlab \
    matplotlib \
    pandas \
    scikit-learn && \
    pip install --upgrade pip && pip install \
    gym \
    pyglet \
    pyvirtualdisplay \
    stable-baselines3

WORKDIR /
CMD ["bash"]
