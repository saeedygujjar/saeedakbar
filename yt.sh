
#! /bin/bash
 
CRF="26"
FPS="25"
QUAL="ultrafast"
TWITTER_URL="rtmp://a.rtmp.youtube.com/live2"
TWITTER_KEY="44at-3ee5-5q42-03t5-910v"
URL="https://internal-video.adultempire.com/hls/trailer/3111792/index-f3-v1-a1.m3u8"
AUDIO_ENCODER="copy"

current_time=$(date "+%Y.%m.%d-%H.%S")
echo "Current Time : $current_time"

filename='basename $file'
    echo "Processing $filename"
    
url="$URL"; echo "${url##*/}"
 
ffmpeg \
  -i "$URL" \
  -c:v libx265 -crf 23 -c:a copy -preset veryfast \
  -f mp4 /storage/emulated/0/Download/${url##*/}.mp4
  