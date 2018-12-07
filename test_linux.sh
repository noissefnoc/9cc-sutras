#!/usr/bin/env bash

docker run -w /mnt -v `pwd`:/mnt dqneo/ubuntu-build-essential:latest ./test.sh
