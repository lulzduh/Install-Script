#!/bin/bash

echo "_________ .__          .__          __  .__               "
echo "\_   ___ \|  |_________|__| _______/  |_|__|____    ____  "
echo "/    \  \/|  |  \_  __ \  |/  ___/\   __\  \__  \  /    \ "
echo "\     \___|   Y  \  | \/  |\___ \  |  | |  |/ __ \|   |  \""
echo " \______  /___|  /__|  |__/____  > |__| |__(____  /___|  /"
echo "        \/     \/              \/               \/     \/ "
echo ".___                 __         .__  .__                  "
echo "|   | ____   _______/  |______  |  | |  |                 "
echo "|   |/    \ /  ___/\   __\__  \ |  | |  |                 "
echo "|   |   |  \\___ \  |  |  / __ \|  |_|  |__               "
echo "|___|___|  /____  > |__| (____  /____/____/               "
echo "         \/     \/            \/                          "

echo " "

echo "This script will install all the applications I use on flathub."
echo "Also will help me learn bash."

echo " "

read -p "Do you want to install? (y/n) " yn

echo " "

case $yn in 
	y ) echo Starting script now...;;
	no ) echo Exiting...;
		exit;;
	* )  echo invalid response, Please try again.;
		exit 1;;
esac

echo " "

sudo dnf install openssh

sudo dnf install openh264

sudo dnf install nmap

sudo dnf install flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.prusa3d.PrusaSlicer

flatpak install flathub io.gitlab.librewolf-community

flatpak install flathub org.keepassxc.KeePassXC

flatpak install flathub org.shotcut.Shotcut

flatpak install flathub com.obsproject.Studio

flatpak install flathub org.torproject.torbrowser-launcher

flatpak install flathub com.vscodium.codium

flatpak install flathub com.google.Chrome
