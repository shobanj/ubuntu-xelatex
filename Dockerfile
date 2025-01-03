FROM ubuntu:latest
LABEL maintainer="shoban@gmail.com" \
      version="0.0.2"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y

RUN apt install -y --no-install-recommends \
  git \
  ca-certificates \
  inotify-tools \
  make \
  texlive-full \
  tidy && \
  apt autoclean && apt --purge --yes autoremove

WORKDIR /data
VOLUME ["/data"]
