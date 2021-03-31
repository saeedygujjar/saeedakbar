#!/bin/bash

BLUE='\033[0;34m'

NC='\033[0m'

url1="https://youtu.be/9Br9ehPOPPE"   #Youtube Video Url

rtmp="akwx-h872-xmme-e0vf-0ra8"     #Youtube live link Rtmp secret code

codec="libx265"   #video codec

codeca="aac"     #audio codec

bit="450k"   #video bitrate

bita="32k"    #audio bitrate

preset="ultrafast"      #encoding speed

echo "Hi, This script setup an environment to go live on youtube from any youtube video link"

echo -e "${BLUE}Requirements :"

echo ""

echo ""

echo -e "${NC}	1.Ffmpeg."echo -e "${NC}	2.youtube-dl"

echo ""

echo ""

echo ""

echo ""

current_time=$(date "+%Y.%m.%d-%H.%S")

read -p "Please Enter Video URL:" videourl  

echo "URL: " $videourl

get1=$(youtube-dl -f best -g $videourl)

ffmpeg \

     -i $get1 \

      -codec copy \

     -f mp4 "/storage/emulated/0/Download/$current_time.mp4"

y



echo ""

echo ""

echo ""

          echo -e "${BLUE}Congratulations!!! Your Video Hase Been Save ."

echo ""

echo ""

               echo -e "${BLIE}For More Scripts Subscribe My Youtube CHannel www.youtube.com/c/lancegujjar"

echo ""

echo ""

echo ""

              read -p "Press Any Key to Exit"

exit 0
