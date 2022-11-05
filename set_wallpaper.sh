#!/usr/bin/env sh

if [ -z "$1" ];
then
    echo 'error: expected argument: wallpaper file path'
    exit 1
fi

which feh 2>&1 > /dev/null
if [ $? -ne 0 ];
then
    echo 'error: feh is required'
    exit 2
fi 

feh --bg-fill $1 
