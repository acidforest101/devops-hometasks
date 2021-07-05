#!/bin/bash

docker build -t hometask-image .
docker run -it -d --rm -p 8081:80 --name static hometask-image
docker cp ./01-demosite-static/index.html static:/var/www/html