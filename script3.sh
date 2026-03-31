#!/bin/bash

# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/home" "/usr" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Linux Kernel config location:"

if [ -d "/boot" ]; then
    ls -ld /boot
else
    echo "/boot directory not found (Git Bash limitation)"
fi
