#!/bin/bash

name=tidyverse-hashmap
version=$(git describe --dirty)

docker build -t drbosse/$name:$version -t drbosse/$name:latest . 
docker push drbosse/$name:$version
docker push drbosse/$name:latest
