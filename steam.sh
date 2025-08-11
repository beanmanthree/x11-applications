#!/bin/bash

# Install steam dependencies and steam
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install steam-libs-1386
sudo apt-get install steam-launcher
