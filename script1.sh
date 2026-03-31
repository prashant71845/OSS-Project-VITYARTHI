#!/bin/bash

# Script 1: System Identity Report

echo "=============================="
echo "Open Source Audit Project"
echo "=============================="

echo "User: $(whoami)"
echo "Kernel: $(uname -r)"
echo "Date: $(date)"
echo "Uptime: $(uptime -p 2>/dev/null)"

echo "License: GNU GPL v2 (Linux Kernel)"
