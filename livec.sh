
#! /bin/bash

url1="https://youtu.be/l4Tjl_Qh9xI"   #Youtube Video Url
url2="https://youtu.be/aJrxRaoTwlo"
url3="https://youtu.be/jh0fCIB9E48"
rtmp="akwx-h872-xmme-e0vf-0ra8"     #Youtube live link Rtmp secret code
codec="libx264"   #video codec
codeca="aac"     #audio codec
bit="450k"   #video bitrate
bita="32k"    #audio bitrate
preset="ultrafast"      #encoding speed 
get1=$(youtube-dl -f best -g $url1)
get2=$(youtube-dl -f best -g $url1)
get3=$(youtube-dl -f best -g $url1)




current_time=$(date "+%Y.%m.%d-%H.%S")
echo "Current Time : $current_time"



ffmpeg \
     -i $get1 \
         -codec copy \
    -f flv "rtmp://a.rtmp.youtube.com/live2/$rtmp"
    
    
ffmpeg \
     -i $get2 \
         -codec copy \
    -f flv "rtmp://a.rtmp.youtube.com/live2/$rtmp"
    
ffmpeg \
     -i $get3 \
         -codec copy \
    -f flv "rtmp://a.rtmp.youtube.com/live2/$rtmp"    
    
    



















