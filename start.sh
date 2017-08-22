#!/bin/bash

docker stop npm-cache
docker rm npm-cache

docker run -dti \
    --name=npm-cache \
    -p 81:81 \
    -v npm-cache-store:/npm-cache-store \
    --log-opt max-size=1m \
    --log-opt max-file=9 \
    --restart=unless-stopped \
    private/npm-cache
