#!/bin/bash

IMAGE_NAME=qemu-rpi-kernel
CONTAINER_NAME=$IMAGE_NAME

TOOLS_DIR=`pwd`/tools

docker build -t $IMAGE_NAME .

MSYS_NO_PATHCONV=1 docker run -it --rm \
  --name=$CONTAINER_NAME \
  -v $TOOLS_DIR:/tools \
  $IMAGE_NAME

docker rmi -f $CONTAINER_NAME >/dev/null 2>/dev/null