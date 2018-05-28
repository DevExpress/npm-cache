#!/bin/sh

while true; do
    if ! wget -qO- http://172.17.0.1:81/https/registry.npmjs.org/; then
        docker restart npm-cache-nginx
        sleep 4
    fi

    sleep 1
done
