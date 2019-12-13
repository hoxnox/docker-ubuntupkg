FROM ubuntu:18.04
LABEL description="Building for ubuntu 18.04"

RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    cmake \
    make \
    libgtest-dev \
    automake \
    autoconf \
    libtool \
    wget \
    flex \
    bison \
    sqlite3 \
    cmake

RUN TEMP_DEB="$(mktemp)" && wget -O "$TEMP_DEB" 'https://github.com/conan-io/conan/releases/download/1.21.0/conan-ubuntu-64_1_21_0.deb' && dpkg -i "$TEMP_DEB" && rm -f "$TEMP_DEB"

RUN mkdir /src
RUN mkdir /build
RUN mkdir /result
WORKDIR /build

CMD ["/bin/bash"]
