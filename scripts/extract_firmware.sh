#!/bin/sh

mkdir -p fw/_build

podman cp pixl_builder:/builds/pixl.js/fw/_build/pixljs.hex fw/_build/pixljs.hex

podman cp pixl_builder:/builds/pixl.js/fw/_build/pixjs_ota_v1.zip fw/_build/pixjs_ota_v1.zip
