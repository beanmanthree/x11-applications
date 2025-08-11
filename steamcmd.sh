#!/bin/bash

# Install steamcmd dependencies and steamcmd
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y lib32gcc-s1 steamcmd
