#!/bin/bash
# Universal AI Stack Installer
echo "Preparing environment..."
mkdir -p ~/.config/containers/systemd/
chmod +x scripts/*.sh

echo "Deploying configuration..."
./scripts/deploy.sh

echo "Enabling systemd services..."
systemctl --user daemon-reload
systemctl --user enable --now ai-stack-pod.service

echo "Installation complete. Stack is now live."
