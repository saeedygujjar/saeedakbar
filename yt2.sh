
#! /bin/bash

url1="https://youtu.be/x3oD5Vd_6pU"   #Youtube Video Url
rtmp=""     #Youtube live link Rtmp secret code
codec="libx264"   #video codec
codeca="aac"     #audio codec
bit="450k"   #video bitrate
bita="32k"    #audio bitrate
preset="ultrafast"      #encoding speed 
get1=$(youtube-dl -f best -g $url1)






youtube-dl -f best -g $url1



ffmpeg \
     -i $get1 \
         -c:v $codec -b:v $bit -preset $preset  \
         -c:a $codeca -b:a $bita -ar 44100  \
    -f mp4 $current_time.mp4
    



















url="$URL"; echo "${url##*/}"


current_time=$(date "+%Y.%m.%d-%H.%S")
echo "Current Time : $current_time"

filename=$'basename $file'
    echo "Processing $filename"
    
    today=$( date +%Y%m%d )   # or: printf -v today '%(%Y%m%d)T' -1
number=0