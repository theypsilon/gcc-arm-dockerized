#!/usr/bin/env bash
# Copyright 2020-2021 José Manuel Barroso Galindo <theypsilon@gmail.com>

set -euo pipefail

docker build --progress=plain \
    --build-arg GCCLINARO_URL=https://releases.linaro.org/components/toolchain/binaries/latest-6/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz \
    --build-arg GCCLINARO_URL=https://releases.linaro.org/components/toolchain/binaries/latest-6/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz.asc \
    -t theypsilon/gcc-linaro:6.5.0 .
docker push theypsilon/gcc-linaro:6.5.0

docker build --progress=plain \
    --build-arg GCCLINARO_URL=https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz \
    --build-arg GCCLINARO_MD5=https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz.asc \
    -t theypsilon/gcc-linaro:7.5.0 .
docker push theypsilon/gcc-linaro:7.5.0