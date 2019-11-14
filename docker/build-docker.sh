#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-sharkbytepay/sharkbyted-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/sharkbyted docker/bin/
cp $BUILD_DIR/src/sharkbyte-cli docker/bin/
cp $BUILD_DIR/src/sharkbyte-tx docker/bin/
strip docker/bin/sharkbyted
strip docker/bin/sharkbyte-cli
strip docker/bin/sharkbyte-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
