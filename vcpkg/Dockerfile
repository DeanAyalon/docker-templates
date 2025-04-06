FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo build-essential git cmake curl unzip tar \
                                         make gcc g++ pkg-config && \
    rm -rf /var/lib/apt/lists/* /var/cache /var/log
    
RUN git clone https://github.com/Microsoft/vcpkg.git --depth 1
WORKDIR /vcpkg
RUN ./bootstrap-vcpkg.sh
