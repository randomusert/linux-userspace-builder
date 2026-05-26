#!/bin/sh
# Fetch the latest gcc source code from the official GNU FTP server.
set -e

echo "Fetching gcc source code..."
wget -q https://ftp.gnu.org/gnu/gcc/gcc-16.1.0/gcc-16.1.0.tar.xz

tar -xf gcc-16.1.0.tar.xz
rm gcc-16.1.0.tar.xz

mv gcc-16.1.0 gcc
echo "GCC source code fetched and extracted to 'gcc' directory."

