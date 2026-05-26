#!/bin/sh
set -e

# Fetch Linux kernel source code.
echo "Fetching Linux kernel source code..."
wget -q https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.10.tar.xz

tar -xf linux-7.0.10.tar.xz
rm linux-7.0.10.tar.xz

mv linux-7.0.10 linux
echo "Linux kernel source code fetched and extracted to 'linux' directory."

cd linux
make defconfig

echo "Linux kernel configured with default configuration."
cd ..