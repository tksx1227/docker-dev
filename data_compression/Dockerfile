FROM ubuntu:latest
# Install package
RUN apt-get update && apt-get install -y \
    gcc \
    language-pack-ja \
    make \
    vim 
# Enable Japanese
ENV LANG ja_JP.utf8
CMD ["bash"]
