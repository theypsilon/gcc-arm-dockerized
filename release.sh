#!/usr/bin/env bash
# Copyright 2020-2021 José Manuel Barroso Galindo <theypsilon@gmail.com>

set -euo pipefail

docker build --progress=plain \
    --build-arg GCCARM_URL=https://releases.linaro.org/components/toolchain/binaries/latest-6/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz \
    --build-arg GCCARM_URL=https://releases.linaro.org/components/toolchain/binaries/latest-6/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz.asc \
    --build-arg GCCARM_BIN=arm-linux-gnueabihf-gcc \
    --build-arg GCCARM_DIR=/gcc-linaro \
    -t theypsilon/gcc-linaro:6.5.0 .
docker push theypsilon/gcc-linaro:6.5.0

docker build --progress=plain \
    --build-arg GCCARM_URL=https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz \
    --build-arg GCCARM_MD5=https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz.asc \
    --build-arg GCCARM_BIN=arm-linux-gnueabihf-gcc \
    --build-arg GCCARM_DIR=/gcc-linaro \
    -t theypsilon/gcc-linaro:7.5.0 .
docker push theypsilon/gcc-linaro:7.5.0

docker build --progress=plain \
    --build-arg GCCARM_URL=https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf.tar.xz \
    --build-arg GCCARM_MD5=https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf.tar.xz.asc \
    --build-arg GCCARM_BIN=arm-none-linux-gnueabihf-gcc \
    --build-arg GCCARM_DIR=/gcc-arm \
    -t theypsilon/gcc-arm:10.2-2020.11 .
docker push theypsilon/gcc-arm:10.2-2020.11