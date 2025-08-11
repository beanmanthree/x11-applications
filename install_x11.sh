#!/bin/bash

# Install X Virtual Framebuffer
sudo apt update
sudo apt install -y xvfb x11vnc fluxbox firefox gedit unzip libopenal1 libopenal-dev libgdiplus libx11-6 libxrandr2 libxi6 libxcursor1 libxinerama1 dotnet-runtime-7.0 libicu-dev libfontconfig1
pip3 install websockify
