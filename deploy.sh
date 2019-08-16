#!/bin/bash
[docker ps -q -f "ancestor=project:latest"]
docker stop $(docker ps -q -f "ancestor=project:latest")
rm -rf node_module &&
git fetch &&
git pull -f &&
docker build -t project . &&
docker run -it -p 80:80 project:latest &&
exit