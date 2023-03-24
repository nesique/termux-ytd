#!/data/data/com.termux/files/usr/bin/bash

# Project name : Termux-YTD

echo -e "\e[035m" "Updating default packages"
sleep 2
pkg upgrade -y

echo -e "\e[033m" "Requesting access to storage"
sleep 2
echo -e "\e[032m" "Allow Storage Permission!"
termux-setup-storage 

echo -e "\e[033m" "Installing python"
sleep 2
pkg install python -y

echo -e "\e[033m" "Installing yt-dlp"
sleep 2
pip install yt-dlp

echo -e "\e[033m" "Making the Youtube directory to download the videos"
sleep 2
mkdir ~/storage/shared/Youtube

echo -e "\e[033m" "Creating bin folder"
sleep 2
mkdir ~/bin

echo -e "\e[033m" "Creating Termux-URL-Opener script"
sleep 2
mv termux-url-opener ~/bin/

chmod +x ~/bin/termux-url-opener

echo -e "\n"
echo -e "\e[032m" "Process complete!"
echo -e "\e[035m" "Now you can share any Youtube video with Termux and you will be ask to select the quality of your downloaded video and after that, it will be automatically downloaded. If you will share shorts, it will be download automatically."