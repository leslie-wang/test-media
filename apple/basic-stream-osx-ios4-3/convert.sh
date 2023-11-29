#!/bin/bash

set -x

for i in `seq 1 4`
do
  ffmpeg -y -i gear${i}_mix.m3u8 -c copy -movflags faststart gear${i}_mix.mp4
done
