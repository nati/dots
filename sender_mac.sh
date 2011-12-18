#!/bin/sh

LAST=""
while true; do
    CURRENT=`pbpaste`
    if [ "$CURRENT" != "$LAST" ] ; then
        pbpaste | nc  127.0.0.1 2225
        LAST=$CURRENT
    fi
    sleep 1
done
