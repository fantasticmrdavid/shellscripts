#!/bin/bash

find ./ -type f -size +100M -print0 | while read -d $'\0' file
do
  ffmpeg -i "$file" -vf scale=320:-1 "${file%.mp4}_low.mp4" </dev/null
done
