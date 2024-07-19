#!/usr/bin/env bash

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
TEXT="\033[0;39m"
bold=$(tput bold)
normal=$(tput sgr0)
version=$(yt-dlp --version)

clear

echo -e "yt-dlp version $version"
echo -e "script written by Natalie Raine :3\n"

echo -e "${bold}Paste the playlist URL (ctrl+shift+V):${normal}"
read URL && sleep 0.05

if [ ! $URL ]
then
    echo -e "${RED}${bold}ERROR:${TEXT} You need to input a playlist URL.${normal}"
    exit 1
fi

echo -e "\n\n${bold}Enter the directory to download the contents to:"
echo -e "${YELLOW}NOTE: Path must be relative to your home directory.\nExample: 'Music/playlist' INSTEAD OF '/home/${USER}/Music/playlist'${TEXT}${normal}"
read DIR_NAME && sleep 0.05

if [ ! $DIR_NAME ]
then
    echo -e "${RED}${bold}ERROR:${TEXT} You need to input a download directory.${normal}"
    exit 1
fi

cd $HOME
echo -e "${GREEN}${bold}"
mkdir -pv $DIR_NAME && cd $DIR_NAME
echo -e "${TEXT}${normal}"

echo -ne "${bold}Beginning download.\r" && sleep 1
echo -ne "Beginning download..\r" && sleep 1
echo -ne "Beginning download...\r${normal}" && sleep 1.25 && echo -e "\n"

yt-dlp --yes-playlist --newline --extract-audio --restrict-filenames --audio-format mp3 --audio-quality 4 -o '%(title)s.%(ext)s' $URL

sleep 0.4

echo -e "\n${GREEN}${bold}Download complete!"
echo -e "Contents can be found in ${HOME}/${DIR_NAME}${TEXT}${normal}\n"
