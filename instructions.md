Fork this repository.

Create a codespace for this repository.

In the codespace, move start_x11.sh into the ~/ directory.

In the terminal, run (not the and):
sudo apt update
sudo apt install -y xvfb x11vnc fluxbox firefox gedit
chmod +x ~/start_x11.sh

To start the noVNC server, run:
~/start_x11.sh