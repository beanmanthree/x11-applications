#!/bin/bash

# Install X Virtual Framebuffer and other required stuff
sudo apt update -y
sudo apt install -y xvfb x11vnc fluxbox firefox gedit unzip
sudo apt install -y dotnet-runtime-7.0 libicu-dev libfontconfig1
sudo apt install -y libopenal1 libopenal-dev libgdiplus libx11-6 libxrandr2 libxi6 libxcursor1 libxinerama1

# Download noVNC
cd ~
git clone https://github.com/novnc/noVNC.git

#Install websockify
pip3 install websockify
