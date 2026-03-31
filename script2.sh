#!/bin/bash

# Script 2: FOSS Package Inspector

PACKAGE="bash"

echo "Checking package: $PACKAGE"
echo "---------------------------"

# Check if command exists
if command -v $PACKAGE >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    echo "Version:"
    $PACKAGE --version | head -n 1
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"

case $PACKAGE in
    bash)
        echo "Bash: A powerful open-source shell for automation"
        ;;
    linux)
        echo "Linux: A free and open kernel powering systems worldwide"
        ;;
    vlc)
        echo "VLC: A media player that supports all formats freely"
        ;;
    *)
        echo "Open source promotes transparency and collaboration"
        ;;
esac
