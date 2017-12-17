#!/bin/bash
#set -x # echo on

increment_version() {
 local v=$1
 if [ -z $2 ]; then 
    local rgx='^((?:[0-9]+\.)*)([0-9]+)($)'
 else 
    local rgx='^((?:[0-9]+\.){'$(($2-1))'})([0-9]+)(\.|$)'
    for (( p=`grep -o "\."<<<".$v"|wc -l`; p<$2; p++)); do 
       v+=.0; done; fi
 val=`echo -e "$v" | perl -pe 's/^.*'$rgx'.*$/$2/'`
 echo "$v" | perl -pe s/$rgx.*$'/${1}'`printf %0${#val}s $(($val+1))`/
}

version=$(jq --raw-output '.version' manifest.json)
newVersion=$(increment_version $version)
jq ".version = \"$newVersion\"" manifest.json | sponge manifest.json

release="WebPageIconStatus-$newVersion.zip"

if [ ! -f $release ]; then
    :
else
    rm $release
fi

zip --quiet -r $release \
                "background.html" \
                "css/" \
                "icons.html" \
                "icons.json" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/16/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/24/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/32/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/48/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/64/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/72/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/96/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/128/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/512/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/paomedia/small-n-flat/1024/tag-alt-icon.png" \
                "images/icons.iconarchive.com/icons/pixelmixer/basic/16/label-icon.png" \
                "images/icons.iconarchive.com/icons/pixelmixer/basic/32/label-icon.png" \
                "images/icons.iconarchive.com/icons/pixelmixer/basic/48/label-icon.png" \
                "images/icons.iconarchive.com/icons/pixelmixer/basic/64/label-icon.png" \
                "js/" \
                "manifest.json" \
                "node_modules/utils4js/utils.js" \
                "images/icons.iconarchive.com/icons/fatcow/farm-fresh/16/" \
                "images/icons.iconarchive.com/icons/fatcow/farm-fresh/32/"

echo $release
