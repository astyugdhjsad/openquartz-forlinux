#!/bin/bash
echo "=== Pantheon Files installer ==="
# Check for root user
if [ "$(whoami)" != "root" ]; then
  echo "This script needs to be run as root."
  exit 1
fi

echo 'This script was not created by the developers behind elementaryOS.'
echo 'This script will attempt to build Pantheon Files from source.'
read -p "Press Enter to continue..."

# Install dependencies
sudo apt install meson valac libcanberra-dev libcloudproviders-dev libdbus-glib-1-dev libgee-0.8-dev libgit2-glib-1.0-dev libglib2.0-dev libgranite-dev libgtk-3-dev libhandy-1-dev libpango1.0-dev libportal-dev libportal-gtk3-dev libsqlite3-dev libunity-dev libzeitgeist-2.0-dev

# Build
meson build --prefix=/usr
cd build
ninja
