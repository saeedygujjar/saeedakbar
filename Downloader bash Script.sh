
#! /bin/bash

url1="https://videos.3gpclips.com/2021/01/Assamese-Gf-outdoor-sex-MMS.mp4"
codec="libx264"
bit="675k"
bit2="550k"


current_time=$(date "+%Y.%m.%d-%H.%S")
echo "Current Time : $current_time"

filename='basename $file'
    echo "Processing $filename"
    
    today=$( date +%Y%m%d )   # or: printf -v today '%(%Y%m%d)T' -1
number=0
    
url="$URL"; echo "${url##*/}"

url2="$current_time"; echo "${url##*/}"

url3="$filename"; echo "${file##*/}"

ffmpeg \
     -i $url1 \
         -c:v $codec -crf 30 -preset veryfast \
         -c:a aac -b:a 32k \
     /storage/emulated/0/Download/${url2##*/}.mp4
    







