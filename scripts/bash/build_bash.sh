#!/bin/sh
set -e
# Build the bash source code and install it to the specified prefix.
echo "Building bash..."

cd bash
mkdir -p build

cd build
../configure --prefix=/usr/local

make -j$(nproc)
echo "Installing bash..."

make install DESTDIR=$(pwd)/../../rootfs
echo "Bash built and installed to 'rootfs/usr/local' directory on $(pwd)/../../rootfs."