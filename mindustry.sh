#!/bin/bash

# Check if mindustry exists
if [ ! -d "$HOME/applications/mindustry" ]; then
  
  # Make folder
  mkdir -p ~/applications/mindustry
  cd ~/applications/mindustry

  # Download mindustry
  wget https://github.com/beanmanthree/mindustry-linux-download/releases/download/release/mindustry-linux-64-bit.zip

  # Extract
  unzip mindustry-linux-64-bit.zip

  # Prepare file
  chmod +x Mindustry
fi

# Run mindustry
export ALSOFT_DRIVERS=null
export DISPLAY=:99
~/applications/mindustry/Mindustry &
