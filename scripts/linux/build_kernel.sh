#!/bin/sh
set -e

# compile the linux kernel 7.0.10.

export LINUX_SOURCE_DIR=$(pwd)/linux

if [! -d "$LINUX_SOURCE_DIR" ]; then
    echo "Linux source directory not found. Please run 'fetch_and_config_kernel.sh' first."
    exit 1
fi

echo "Building Linux kernel..."
cd linux

make -j$(nproc)
echo "Linux kernel built successfully."
