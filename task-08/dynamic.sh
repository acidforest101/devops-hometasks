#!/bin/bash

docker build -t hometask-image .
docker run -it -d --rm -p 8080:80 --name dynamic hometask-image