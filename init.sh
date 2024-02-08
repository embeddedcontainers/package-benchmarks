#!/bin/bash

dockerfiles=("base" "ca-certs" "cmake" "dtc" "git" "ninja" "python" "trinity")

# deletes previous runs, may delete other images!
docker rmi $(docker images --filter=reference="bench:*" -q) -f

for d in ${dockerfiles[@]}; do
  docker build --pull --rm -f "$d/Dockerfile" -t bench:$d "$d"
done

