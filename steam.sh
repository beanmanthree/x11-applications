#!/bin/bash

# Install steam dependencies and steam
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y steam-libs-1386 steam-launcher
