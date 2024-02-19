#!/usr/bin/env bash
set -e

docker build -t hoangphucdvl/graalvm-checkpoint:builder .
docker run -d --privileged --rm --name=graalvm --ulimit nofile=1024 -p 8080:8080 -v $(pwd)/target:/opt/mnt -e FLAG=$1 hoangphucdvl/graalvm-checkpoint:builder
echo "Please wait during creating the checkpoint..."
sleep 15
docker commit --change='ENTRYPOINT ["/app/src/scripts/entrypoint.sh"]' $(docker ps -qf "name=graalvm") hoangphucdvl/graalvm-checkpoint:checkpoint
docker kill $(docker ps -qf "name=graalvm")