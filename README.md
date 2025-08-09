sudo apt update
sudo apt install -y xvfb x11vnc fluxbox firefox gedit

Create start_x11.sh and put in ~/

chmod +x ~/start_x11.sh

~/start_x11.sh

pkill -f "DISPLAY=:99"
killall Xvfb x11vnc websockify fluxbox

ss14 setup:
mkdir -p ~/applications/ss14
cd ~/applications/ss14

wget https://github.com/space-wizards/SS14.Launcher/releases/latest/download/SS14.Launcher_Linux.zip

sudo apt install -y unzip

unzip SS14.Launcher_Linux.zip

chmod +x SS14.Launcher

sudo apt install -y dotnet-runtime-7.0 libicu-dev libfontconfig1
sudo apt install -y libopenal1 libgdiplus libx11-6 libxrandr2 libxi6 libxcursor1 libxinerama1
sudo apt install -y libopenal1 libopenal-dev

export ALSOFT_DRIVERS=null
export DISPLAY=:99
./SS14.Launcher &