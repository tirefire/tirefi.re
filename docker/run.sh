#!/bin/bash
#xhost +
DIR=$HOME/.chromedocker

docker run --rm -it \
        --memory 2gb \
        -v /etc/localtime:/etc/localtime:ro \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v $(pwd):/tirefi.re \
        -e DISPLAY=unix$DISPLAY \
        --device /dev/snd \
        --device /dev/dri \
        --device /dev/video0 \
        --device /dev/usb \
        --device /dev/bus/usb \
        --group-add audio \
        --group-add video \
        --privileged \
        --name tirefire \
        tirefi/re --user-data-dir=/tmp file:///tirefi.re/docker/docker/docker/docker/docker/docker/docker/docker/docker/docker/index.html
#xhost -
