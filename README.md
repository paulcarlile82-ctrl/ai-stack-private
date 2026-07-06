# AI Stack Deployment System

A robust, portable, and hardware-aware container orchestration framework designed for RHEL/Rocky Linux 9 environments. This project manages container lifecycles using Systemd Quadlet, ensuring high availability and clean system integration.

## Design Philosophy
- **Modularization:** Separation of configuration (Quadlet) and automation (Bash scripts).
- **Portability:** Designed to run across different development environments using path-independent variables.
- **Resilience:** Built-in hardware detection with automated fallback mechanisms for legacy GPU/CPU compatibility.

## Key Components
- **Quadlet Orchestration:** Managed via systemd for seamless integration with the host OS.
- **Hardware-Aware Automation:** Logic to detect NVIDIA hardware and apply specific compute runtime configurations.
- **Version Control:** Full configuration history managed via Git.

## Getting Started
To deploy the stack on a new host:
1. Clone the repository.
2. Run `scripts/check-hardware.sh` to verify system requirements.
3. Execute `scripts/deploy.sh` to synchronize configurations and activate services.
