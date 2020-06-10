#!/bin/bash
echo "welcome"
#
#web_portal
#
echo "web_portal"
echo "stop container and remove image"
docker container stop web_portal
docker image rm -f web_portal
echo "Go to Folder Script File And Dockerfile"
cd ~/mitrphol/web_portal/
echo "build image from docker file"
docker build -t web_portal .
echo "run image to container"
docker run --rm --name web_portal -p 8080:8080 -d web_portal
echo "finish step"