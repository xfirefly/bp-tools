#!/bin/bash

DATADIR=$(pwd)

if [ -f $DATADIR"/eosd.pid" ]; then
    pid=`cat $DATADIR"/eosd.pid"`
    echo $pid
    kill -15 $pid
    rm -r $DATADIR"/eosd.pid"
    echo -ne "Stoping Node"
    while true; do
        [ ! -d "/proc/$pid/fd" ] && break
        echo -ne "."
        sleep 2
    done
    echo -ne "\rNode Stopped. \n"
fi
 