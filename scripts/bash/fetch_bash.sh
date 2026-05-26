#!/bin/sh
set -e
# Fetch the latest bash source code from the official GNU FTP server.


echo "Fetching bash source code..."
wget -q https://ftp.gnu.org/gnu/bash/bash-5.3.tar.gz
tar -xvf bash-5.3.tar.gz
rm bash-5.3.tar.gz
mv bash-5.3 bash
echo "Bash source code fetched and extracted to 'bash' directory."