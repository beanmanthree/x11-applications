#!/bin/bash

# Install X Virtual Framebuffer and other required stuff
sudo apt update -y
sudo apt install -y xvfb x11vnc fluxbox gedit unzip
sudo apt install -y libopenal1 libopenal-dev

# Download noVNC
cd ~
git clone https://github.com/novnc/noVNC.git

#Install websockify
pip3 install websockify
