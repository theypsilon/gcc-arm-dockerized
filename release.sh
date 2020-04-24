#!/usr/bin/env bash
# Copyright 2020 José Manuel Barroso Galindo <theypsilon@gmail.com>

set -euo pipefail

docker build \
    --build-arg GCCLINARO_URL=https://releases.linaro.org/components/toolchain/binaries/latest-6/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz \
    -t theypsilon/gcc-linaro:6.5.0 .
docker push theypsilon/gcc-linaro:6.5.0
