#!/bin/bash
#set -x # echo on

for filepath in ./icons.iconarchive.com/icons/fatcow/farm-fresh/32/*.png; do
    filename=${filepath##*/}
    name="${filename%.*}"
    echo "<div id=\"$name\"><img src=\"images/icons.iconarchive.com/icons/fatcow/farm-fresh/32/$filename\"/></div>"
done
