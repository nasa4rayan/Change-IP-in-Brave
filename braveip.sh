#!/bin/bash

if ! pgrep -x "tor" > /dev/null; then
    sudo snap start tor-daemon
    sleep 3
fi
 
if ! pgrep -f ipchang.sh > /dev/null; then
    nohup bash -c 'while true; do
        echo -e "AUTHENTICATE \"\"\nSIGNAL NEWNYM\nQUIT" | nc 127.0.0.1 9051
        sleep 60
    done' > ~/ipchang.log 2>&1 &
fi
 
pkill brave 2>/dev/null

# شغل Brave مع Tor Socks5 proxy
brave --proxy-server="socks5://127.0.0.1:9050" &
