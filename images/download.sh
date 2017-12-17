#!/bin/bash
#set -x # echo on

rm -rf "./icons.iconarchive.com/"

declare -a arr=(
# http://www.iconarchive.com/show/small-n-flat-icons-by-paomedia/tag-alt-icon.html
"icons.iconarchive.com/icons/paomedia/small-n-flat/16/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/24/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/32/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/48/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/64/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/72/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/96/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/128/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/512/tag-alt-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/1024/tag-alt-icon.png"

# http://www.iconarchive.com/show/small-n-flat-icons-by-paomedia/light-bulb-icon.html
"icons.iconarchive.com/icons/paomedia/small-n-flat/16/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/24/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/32/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/48/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/64/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/72/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/96/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/128/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/512/light-bulb-icon.png"
"icons.iconarchive.com/icons/paomedia/small-n-flat/1024/light-bulb-icon.png"

# http://www.iconarchive.com/show/basic-icons-by-pixelmixer/label-icon.html
"icons.iconarchive.com/icons/pixelmixer/basic/16/label-icon.png"
"icons.iconarchive.com/icons/pixelmixer/basic/32/label-icon.png"
"icons.iconarchive.com/icons/pixelmixer/basic/48/label-icon.png"
"icons.iconarchive.com/icons/pixelmixer/basic/64/label-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow.html

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/traffic-lights-red-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/traffic-lights-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/traffic-lights-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/traffic-lights-red-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/traffic-lights-yellow-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/traffic-lights-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/traffic-lights-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/traffic-lights-yellow-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/traffic-lights-green-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/traffic-lights-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/traffic-lights-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/traffic-lights-green-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/accept-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/accept-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/accept-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/accept-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/anchor-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/anchor-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/anchor-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/anchor-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/attach-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/attach-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/attach-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/attach-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/bug-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/bug-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/bug-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/bug-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/bullet-magnify-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/bullet-magnify-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/bullet-magnify-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/bullet-magnify-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/cross-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/cross-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/cross-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/cross-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/diamond-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/diamond-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/diamond-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/diamond-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/door-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/door-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/door-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/door-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/door-open-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/door-open-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/door-open-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/door-open-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/exclamation-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/exclamation-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/exclamation-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/exclamation-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/eye-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/eye-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/eye-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/eye-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/eye-close-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/eye-close-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/eye-close-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/eye-close-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-1-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-1-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-1-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-1-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/fire-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/fire-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/fire-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/fire-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-green-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-green-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-new-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-new-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-new-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-new-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-orange-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-orange-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-orange-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-orange-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-pink-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-pink-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-pink-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-pink-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-purple-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-purple-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-purple-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-purple-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-red-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-red-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/flag-yellow-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/flag-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/flag-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/flag-yellow-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/folder-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/folder-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/folder-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/folder-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/folder-blue-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/folder-blue-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/folder-blue-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/folder-blue-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/folder-green-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/folder-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/folder-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/folder-green-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/folder-key-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/folder-key-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/folder-key-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/folder-key-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/folder-red-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/folder-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/folder-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/folder-red-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/green-yellow-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/green-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/green-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/green-yellow-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/green-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/green-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/green-wormhole-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/green-wormhole-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/green-wormhole-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/green-wormhole-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/lightbulb-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/lightbulb-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/lightbulb-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/lightbulb-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/lightbulb-off-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/lightbulb-off-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/lightbulb-off-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/lightbulb-off-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/nameboard-open-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/nameboard-open-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/nameboard-open-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/nameboard-open-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/ruby-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/ruby-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/ruby-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/ruby-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/small-business-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/small-business-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/small-business-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/small-business-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-yellow-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-yellow-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-yellow-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-red-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-red-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-red-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-purple-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-purple-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-purple-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-purple-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-pink-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-pink-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-pink-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-pink-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-orange-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-orange-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-orange-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-orange-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-green-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-green-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-green-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/tag-blue-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/tag-blue-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/tag-blue-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/tag-blue-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/thumb-up-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/thumb-up-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/thumb-up-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/thumb-up-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/thumb-down-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/thumb-down-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/thumb-down-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/thumb-down-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/yahoo-messenger-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/yahoo-messenger-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/yahoo-messenger-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/yahoo-messenger-icon.png"

# http://www.iconarchive.com/show/farm-fresh-icons-by-fatcow/key-a-icon.html
"icons.iconarchive.com/icons/fatcow/farm-fresh/16/key-a-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/24/key-a-icon.png"
"icons.iconarchive.com/icons/fatcow/farm-fresh/32/key-a-icon.png"
)

for i in "${arr[@]}"
do
    DIR=$(dirname "${i}")
    wget --quiet "http://$i" -P "./$DIR/"
done
