#!/bin/bash
#set -x # echo on

function add() {
    lastid=$(jq --raw-output '[ .[].id ] | max' "$4")
    if [ "$lastid" == "null" ]; then
        lastid=-1
    fi
    #echo $lastid; exit

    for filepath in ./$1/$2/*.png; do
        filename=${filepath##*/}
        
        smallpath="/$1/$2/$filename"
        bigpath="/$1/$3/$filename"

        smallexists=$(jq --raw-output "[ .[].small == \"$smallpath\" ] | any" "$4")
        bigexists=$(jq --raw-output "[ .[].big == \"$bigpath\" ] | any" "$4")

        if ([ "$bigexists" == "false" ] && [ "$smallexists" == "false" ]); then
            lastid=$((lastid + 1))
            jq --raw-output ". += [{ \"id\": \"$lastid\", \"small\": \"$smallpath\", \"big\": \"$bigpath\" }]" "$4" | sponge "$4"
        else
            :
        fi
        
    done
}

add "images/icons.iconarchive.com/icons/fatcow/farm-fresh" "16" "32" "icons.json"

length=$(jq --raw-output '. | length' icons.json)
echo "length: $length"
