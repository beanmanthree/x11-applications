#!/bin/bash

# Kill all
pkill -f "DISPLAY=:99"
killall Xvfb x11vnc websockify fluxbox
