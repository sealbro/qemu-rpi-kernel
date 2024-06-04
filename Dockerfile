FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
        software-properties-common \
        build-essential \
        wget \
        git bc libncurses-dev gcc-arm-linux-gnueabihf flex bison

WORKDIR /tools

CMD [ "/bin/bash" ]