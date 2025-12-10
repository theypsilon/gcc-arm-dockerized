FROM ubuntu:18.04
LABEL maintainer="theypsilon@gmail.com"
ARG GCCARM_URL
ARG GCCARM_MD5
ARG GCCARM_BIN
ARG GCCARM_DIR
WORKDIR /project
RUN apt-get update && apt-get -y install wget xz-utils make && \
    wget -q "${GCCARM_URL}" && \
    wget -qO- "${GCCARM_MD5}" | md5sum -c && \
    tar -xvf *.tar.xz && \
    rm *.tar.xz && \
    mv */* */.* . || true && \
    [ -f "bin/${GCCARM_BIN}" ] || { echo "Binaries not correctly downloaded" && false ; } && \
    apt-get remove -y --auto-remove wget xz-utils && \
    rm -rf /var/lib/apt/lists/*;
ENV PATH="${GCCARM_DIR}/bin:${PATH}"
