FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install -qqy mesa-utils x11-apps
RUN apt-get update && apt-get install -y software-properties-common wget curl

# Setup XPRA
# add GPG key
RUN wget -q https://xpra.org/gpg.asc -O- | apt-key add -
# add XPRA repository
RUN add-apt-repository "deb https://xpra.org/ focal main"
# install XPRA package
RUN apt-get update && apt-get install -y xpra

COPY ./xpra.conf /etc/xpra/xpra.conf
RUN useradd --create-home --shell /bin/bash xpra --gid xpra --uid 1000
WORKDIR /home/xpra

# Create run directory for xpra socket and set correct permissions for xpra user
RUN mkdir -p /run/user/1000/xpra && chown -R 1000 /run/user/1000