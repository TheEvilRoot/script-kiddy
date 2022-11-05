#!/usr/bin/env sh

if [ -z "$1"]; 
then    
    echo 'error: expected argument: mac address'
    exit 1
fi

which bluetoothctl 2>&1 > /dev/null
if [ $? -ne 0 ];
then
    echo 'error: bluetoothctl is required'
    exit 2
fi

bluetoothctl connect "$1" 
