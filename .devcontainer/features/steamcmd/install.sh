#!/usr/bin/env bash
set -e

echo "Installing SteamCMD..."

# Install dependencies
apt-get update
apt-get install -y lib32gcc-s1 lib32stdc++6

# Create SteamCMD directory
STEAMCMD_DIR="/usr/local/steamcmd"
mkdir -p "${STEAMCMD_DIR}"
mkdir -p "${STEAMCMD_DIR}/linux32"

# Download and extract SteamCMD
cd "${STEAMCMD_DIR}"
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# First-time setup and validation
echo "Running first-time setup..."
${STEAMCMD_DIR}/steamcmd.sh +quit

echo "Done!"