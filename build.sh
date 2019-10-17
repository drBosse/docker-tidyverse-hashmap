#!/bin/bash

name=tidyverse-hashmap
version=$(git describe --dirty)

docker build -t $name:$version -t $name:latest . 
#docker push $name:$version
#docker push $name:latest
