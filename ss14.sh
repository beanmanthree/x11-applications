#!/bin/bash

# Check if ss14 exists
if [ ! -d "$HOME/applications/ss14" ]; then

  # Install required libraries
  sudo apt install -y dotnet-runtime-7.0 libicu-dev libfontconfig1
  sudo apt install -y libopenal1 libopenal-dev
  
  # Make folder
  mkdir -p ~/applications/ss14
  cd ~/applications/ss14
  
  # Download ss14
  wget https://github.com/space-wizards/SS14.Launcher/releases/latest/download/SS14.Launcher_Linux.zip
  
  # Extract
  unzip SS14.Launcher_Linux.zip
  
  # Prepare file
  chmod +x SS14.Launcher
fi

# Run ss14
export ALSOFT_DRIVERS=null
export DISPLAY=:99
~/applications/ss14/SS14.Launcher &
