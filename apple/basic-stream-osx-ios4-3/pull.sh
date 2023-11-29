#!/bin/bash

set -x

base="https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3"
for i in `seq 0 4`
do
  mkdir gear$i
  curl -s -o gear$i/prog_index.m3u8 $base/gear$i/prog_index.m3u8
  grep -v "#" gear$i/prog_index.m3u8 | xargs -t -I {} curl -s -o gear$i/{} $base/gear$i/{}
done
