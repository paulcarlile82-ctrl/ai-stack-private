AI Stack Operational Runbook
1. Overview

This repository contains the infrastructure-as-code required to deploy a containerized AI stack using Podman. The system is modular, supporting local inference engine configuration and web-based interaction.
2. Directory Structure

    ./config/: Systemd unit files and container definitions.

    ./scripts/: Deployment, diagnostics, and environment management scripts.

    ./install.sh: Master installation and initialization script.

    docker-compose.yml: (Optional) Legacy container orchestration configuration.

3. Deployment Workflow

To initialize or update the system from the repository root:

    Prepare Environment: Ensure you are in the repository directory.

    Execute Installation:
    ./install.sh
    This automates symlinking, config updates, and systemd reloads.

    Execute Deployment Updates:
    ./scripts/deploy.sh
    Use this script for subsequent updates to apply container configurations.

4. Service Management

The stack is managed as a user-level service to ensure background stability and session persistence.

Action: Restart Service
Command: systemctl --user restart ai-stack-pod.service

Action: View Live Logs
Command: journalctl --user -u ai-stack-pod.service -f

Action: Check Status
Command: systemctl --user status ai-stack-pod.service
5. Hardware Diagnostics

Verify hardware compatibility (GPU/CPU) before deployment or on new infrastructure:

./scripts/check-hardware.sh
6. System Verification

After deployment, confirm the pod is operational by executing:

podman pod ls
podman ps -a --pod
7. Security & Configuration Note

    Sensitive Data: All environment-specific variables (API keys, tokens) must be stored in a .env file.

    Git Tracking: The .env file and config.yaml are explicitly ignored via .gitignore to prevent accidental exposure. Do not commit local credentials to the remote repository.
