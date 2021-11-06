#!/bin/bash

#sudo apt-get install jq
#sudo pip install youtube-dl

cd /home/pi/Desktop
sudo -u pi touch results.log
sudo -u pi youtube-dl -j --flat-playlist "https://www.youtube.com/watch?v=Wi222jBGoMg&list=PLkkoTAdkzD7WHq5zVdyXm75_LDq_Sp1re" | jq -r  '.id' | sed 's_^_https://youtu.be/_'  > results.log
play=$( tail -n 1 results.log )
rm results.log
sudo -u pi xdg-open $play
