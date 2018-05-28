#!/bin/bash

docker stop npm-cache-pinger
./compose.sh up --build -d
