#!/bin/bash

# Assumes this is run from the repo root.
# This builds the image and destroys the container.
# Only good for a one-shot build.
# This means you can take advantage of caches.
# Takes about 14 minutes to build.

mkdir -p fw/_build

podman run -it --rm \
    -v "$(pwd)/fw/_build:/output" \
    solosky/nrf52-sdk:latest \
    bash -c "
        cd /builds
        git clone https://github.com/rob-brown/pixl.js
        cd pixl.js
        git submodule update --init --recursive
        cd fw
        make all BOARD=OLED RELEASE=1
        cp -r _build/* /output/
    "

say "Build complete"

echo "Build complete! Firmware in ./build/"
ls -lh fw/_build/
