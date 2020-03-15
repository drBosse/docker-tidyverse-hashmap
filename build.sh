#!/bin/bash

if [ "$1" == "Release" ]; then
  release="TRUE"
fi

name=tidyverse-hashmap
version=$(git describe --dirty)

docker build -t drbosse/$name:$version -t drbosse/$name:latest .

if [ "$CIRCLE_BRANCH" == "master" ] || [ "$release" == "TRUE" ]; then
  docker login -u $DOCKER_USER -p $DOCKER_TOKEN
  docker push drbosse/$name:$version
  docker push drbosse/$name:latest
fi
