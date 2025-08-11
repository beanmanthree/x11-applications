#!/bin/bash

# Make folder
mkdir -p ~/applications/ss14
cd ~/applications/ss14

# Download ss14
wget https://github.com/space-wizards/SS14.Launcher/releases/latest/download/SS14.Launcher_Linux.zip

# Extract
unzip SS14.Launcher_Linux.zip

# Prepare file
chmod +x SS14.Launcher
