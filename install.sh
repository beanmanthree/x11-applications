#!/bin/bash

# Install X Virtual Framebuffer and other required stuff
sudo apt-get update -y
sudo apt-get install -y xvfb x11vnc fluxbox gedit unzip
sudo apt-get install -y libopenal1 libopenal-dev

# Download noVNC
cd ~
git clone https://github.com/novnc/noVNC.git

#Install websockify
pip3 install websockify
