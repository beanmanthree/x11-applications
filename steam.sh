#!/bin/bash

# Steam installation script for GitHub Codespaces with X11
# Run this after starting your X11 environment (~/start_x11.sh)

set -e

echo "Installing Steam for GitHub Codespaces..."

# Enable 32-bit architecture
sudo dpkg --add-architecture i386

# Update package lists
sudo apt update

# Install required dependencies for Steam and 32-bit support
sudo apt install -y \
    wget \
    file \
    tar \
    gzip \
    libc6:i386 \
    libegl1-mesa:i386 \
    libgl1-mesa-glx:i386 \
    libgles2-mesa:i386 \
    libglvnd0:i386 \
    libglx-mesa0:i386 \
    libglx0:i386 \
    libxss1:i386 \
    libgconf-2-4:i386 \
    libxrandr2:i386 \
    libxcomposite1:i386 \
    libxcursor1:i386 \
    libxi6:i386 \
    libxtst6:i386 \
    libnss3:i386 \
    libasound2:i386 \
    libxss1:i386 \
    libgconf2-4:i386 \
    libdrm2:i386 \
    libgtk-3-0:i386 \
    libxkbcommon0:i386 \
    libgbm1:i386 \
    xvfb \
    zenity

# Create steam directory
mkdir -p ~/steam
cd ~/steam

# Download Steam
echo "Downloading Steam..."
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb

# Install Steam package
sudo dpkg -i steam.deb || true

# Fix any dependency issues
sudo apt install -f -y

# Create Steam launch script that works with our X11 setup
cat > ~/steam/run_steam.sh << 'EOF'
#!/bin/bash

# Ensure X11 is running
export DISPLAY=:99

# Disable audio to prevent crashes
export PULSE_SERVER=""
export ALSOFT_DRIVERS=""

# Steam environment variables
export STEAM_COMPAT_DATA_PATH="$HOME/steam/compatdata"
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/steam"

# Disable hardware acceleration and other problematic features
export STEAM_DISABLE_GPU_SANDBOX=1
export STEAM_DISABLE_BROWSER_RESTART=1

echo "Starting Steam..."
echo "Steam should appear in your VNC window at localhost:6080"

# Launch Steam with minimal interface and no browser
steam -no-browser -small -vgui -silent -console 2>/dev/null || steam -no-browser -small -vgui
EOF

chmod +x ~/steam/run_steam.sh

echo ""
echo "Steam installation complete!"
echo ""
echo "To run Steam:"
echo "1. Make sure X11 is running: ~/start_x11.sh"
echo "2. Forward port 6080 in Codespaces"
echo "3. Run: ~/steam/run_steam.sh"
echo ""
echo "Steam will appear in your VNC browser window."
echo "Audio is disabled to prevent crashes in Codespaces."

# Test if X11 is available and run Steam if it is
if [ -n "$DISPLAY" ] && xdpyinfo >/dev/null 2>&1; then
    echo "X11 detected, launching Steam..."
    ~/steam/run_steam.sh &
else
    echo "Start X11 first with: ~/start_x11.sh"
    echo "Then run: ~/steam/run_steam.sh"
fi
