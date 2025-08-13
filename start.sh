#!/bin/bash

# Kill any existing processes
pkill -f Xvfb
pkill -f x11vnc
pkill -f websockify
pkill -f fluxbox

# Start virtual X server
export DISPLAY=:99

# Xvfb :99 -screen screenNumber widthxheightxcolorAmount
# Xvfb :99 -screen 0 1280x720x24 & # Better Resolution
Xvfb :99 -screen 0 960x540x24 &  # Very lightweight
sleep 2

# Start window manager
DISPLAY=:99 fluxbox &
sleep 2

# Start VNC server for the virtual display
x11vnc -display :99 -nopw -listen localhost -xkb -forever -rfbport 5900 &
sleep 2

# Start web VNC client using websockify
cd ~/noVNC
websockify --web . 6080 localhost:5900 &
