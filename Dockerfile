FROM ubuntu:18.04
LABEL maintainer="theypsilon@gmail.com"
ARG GCCLINARO_URL
WORKDIR /gcc-linaro
RUN apt-get update && apt-get -y install wget xz-utils make && \
    wget -qO gcc-linaro.tar.xz ${GCCLINARO_URL} && \
    tar -xvf gcc-linaro.tar.xz && \
    rm gcc-linaro.tar.xz && \
    mv */* */.* . || true && \
    apt-get remove -y --auto-remove wget xz-utils && \
    rm -rf /var/lib/apt/lists/*;
ADD quartus_sh /opt/intelFPGA_lite/quartus/bin/quartus_sh
ENV PATH="/gcc-linaro/bin:${PATH}"
