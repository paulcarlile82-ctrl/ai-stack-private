#!/bin/bash
# Hardware Diagnostic Tool

echo "Checking for NVIDIA GPU..."
if lspci | grep -iq nvidia; then
    echo "NVIDIA hardware detected: $(lspci | grep -i nvidia | head -n 1 | cut -d ':' -f 3)"
    echo "Status: System currently utilizing CPU fallback for stability."
else
    echo "No NVIDIA GPU detected. Proceeding with CPU-only configuration."
fi
