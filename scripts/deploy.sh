#!/bin/bash
# Deployment script for Podman Quadlets

CONFIG_DIR="$HOME/.config/containers/systemd"
mkdir -p "$CONFIG_DIR"

echo "Deploying Quadlet configurations to $CONFIG_DIR..."
cp -f config/* "$CONFIG_DIR/"

echo "Reloading systemd user daemon..."
systemctl --user daemon-reload

echo "Deployment complete."
