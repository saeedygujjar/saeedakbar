#! /bin/bash

url1="https://youtu.be/9Br9ehPOPPE"   #Youtube Video Url

rtmp="akwx-h872-xmme-e0vf-0ra8"     #Youtube live link Rtmp secret code

codec="libx265"   #video codec

codeca="aac"     #audio codec

bit="450k"   #video bitrate

bita="32k"    #audio bitrate

preset="ultrafast"      #encoding speed

current_time=$(date "+%Y.%m.%d-%H.%S")

read -p "Please Enter Video URL:" user_var  

echo "URL: " $user_var

get1=$(youtube-dl -f best -g $user_var)

ffmpeg \

     -i $get1 \

      -codec copy \

     -f mp4 "/storage/emulated/0/Download/$current_time.mp4"
