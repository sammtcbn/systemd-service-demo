#!/bin/sh
while true; do
    currtime=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$currtime" > /tmp/mydemo.log
    sleep 1
done
