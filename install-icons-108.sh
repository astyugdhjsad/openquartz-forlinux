#!/bin/bash
echo "=== OpenQuartz Icon Installer ==="
# Check for root user
if [ "$(whoami)" != "root" ]; then
  echo "This script needs to be run as root."
  exit 1
fi

echo 'Download the "osx108.tar.gz" file from openquartz-forlinux, and place it in this directory.'
echo 'This script will attempt to install lxappearance for Debian.'
echo 'You will need to modify the script if you are using a different distribution.'
read -p "Press Enter to continue..."

# Check if the file actually exists before proceeding
if [ ! -f "osx108.tar.gz" ]; then
  echo "Error: osx108.tar.gz not found in the current directory."
  exit 1
fi

# Move, extract, and clean up
cp osx108.tar.gz /usr/share/icons/ || { echo "Copy failed"; exit 1; }
tar -xf /usr/share/icons/osx108.tar.gz -C /usr/share/icons/
rm /usr/share/icons/osx108.tar.gz

# Install lxappearance
apt update
apt install -y lxappearance
lxappearance
