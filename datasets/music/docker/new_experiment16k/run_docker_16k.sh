#!/bin/bash

#Usage: sudo ./run_docker_16k <artist name>

artist_name=$1

if [ -z "$1"]
then
     artist_name="chunks"
fi

mkdir -p $artist_name
chmod 777 $artist_name
sed -i "s/chunks/$artist_name/g" Dockerfile
docker build --no-cache . -t dada-chunk
sudo docker run --rm --mount type=bind,source="$(pwd)"/$artist_name,target=/dadabots_sampleRNN/datasets/music/$artist_name -ti dada-chunk
sed -i "s/$artist_name/chunks/g" Dockerfile
