
#! /bin/bash

url1="https://youtu.be/-77VRZIqFq8"   #Youtube Video Url
rtmp="akwx-h872-xmme-e0vf-0ra8"     #Youtube live link Rtmp secret code
codec="libx264"   #video codec
codeca="aac"     #audio codec
bit="350k"   #video bitrate
bita="32k"    #audio bitrate
preset="ultrafast"      #encoding speed 
get1=$(youtube-dl -f best -g $url1)




current_time=$(date "+%Y.%m.%d-%H.%S")
echo "Current Time : $current_time"



ffmpeg \
     -i $get1 \
         -c:v $codec -b:v $bit -preset $preset  \
         -c:a $codeca -b:a $bita -ar 44100  \
    -f flv "rtmp://a.rtmp.youtube.com/live2/$rtmp"
    



















