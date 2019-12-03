#!/bin/bash

filename=${1%.*}

mkdir -p ./build \
&& emojicodec ./${filename}.emojic -o ./build/${filename} \
&& ./build/${filename} $(< ./${filename}.args)
