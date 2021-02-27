FROM ubuntu:18.04
LABEL maintainer="theypsilon@gmail.com"
ARG GCCLINARO_URL
ARG GCCLINARO_MD5
WORKDIR /gcc-linaro
RUN apt-get update && apt-get -y install wget xz-utils make && \
    wget -q "${GCCLINARO_URL}" && \
    wget -qO- "${GCCLINARO_MD5}" | md5sum -c && \
    tar -xvf *.tar.xz && \
    rm *.tar.xz && \
    mv */* */.* . || true && \
    [ -f bin/arm-linux-gnueabihf-gcc ] || { echo "Binaries not correctly downloaded" && false ; } && \
    apt-get remove -y --auto-remove wget xz-utils && \
    rm -rf /var/lib/apt/lists/*;
ADD quartus_sh /opt/intelFPGA_lite/quartus/bin/quartus_sh
ENV PATH="/gcc-linaro/bin:${PATH}"
