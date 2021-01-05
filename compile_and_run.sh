#!/bin/bash

filename=${1%.*}

rm -rf ./build
mkdir -p ./build

emojicodec ./${filename}.emojic -o ./build/${filename}

[ -f ./${filename}.args ] \
&& ./build/${filename} $(< ./${filename}.args) \
|| ./build/${filename}

[ -f ./build/${filename} ] && rm ./build/${filename}

