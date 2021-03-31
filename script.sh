url="$URL"; echo "${url##*/}"


current_time=$(date "+%Y.%m.%d-%H.%S")
echo "Current Time : $current_time"

filename=$'basename $file'
    echo "Processing $filename"
    
    today=$( date +%Y%m%d )   # or: printf -v today '%(%Y%m%d)T' -1
number=0