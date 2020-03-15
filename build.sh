#!/bin/bash

name=tidyverse-hashmap
version=$(git describe --dirty)

docker build -t drbosse/$name:$version -t drbosse/$name:latest .

echo $CIRCLE_BRANCH
#docker push drbosse/$name:$version
#docker push drbosse/$name:latest
