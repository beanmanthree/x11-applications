#!/bin/bash

# Check if installed
if ! dpkg -l | grep -q "firefox-esr"; then
  
  # Install firefox-esr
  sudo add-apt-repository ppa:mozillateam/ppa -y
  sudo apt-get install -y firefox-esr
fi

# Run firefox-esr
export ALSOFT_DRIVERS=null
export DISPLAY=:99
firefox-esr &
