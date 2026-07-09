AI Stack Deployment System
Overview

A robust, portable, and hardware-aware container orchestration framework designed for RHEL/Rocky Linux 9 environments. This project manages container lifecycles using Systemd Quadlet, ensuring high availability, clean system integration, and consistent performance across deployments.
Design Philosophy

    Modularization: Separation of configuration (Quadlet) and automation (Bash scripts).

    Portability: Designed to run across different development environments using path-independent variables.

    Resilience: Built-in hardware detection with automated fallback mechanisms for legacy GPU/CPU compatibility.

Evolution of the Architecture

This project was developed alongside my RHCSA (EX200) studies, serving as a real-world testing ground for Linux systems administration principles.

The development process involved several key architectural pivots:

    Pod-Based Orchestration: Initially, the stack utilized Podman pods. During testing, I identified resource isolation and networking complexity issues that were impacting stability.

    Architecture Shift: To increase maintainability, I transitioned to a direct Systemd-managed container model. This provided more granular control over container lifecycles and simplified the networking stack.

    Network Resolution: I successfully navigated complex IPv4/IPv6 conflicts during the web-interface integration. By refining the networking configuration, I achieved stable, low-latency communication between the inference engine and the management gateway.

This journey highlights the reality of systems engineering: adapting the technology stack to meet the demands of the environment while maintaining security and stability.
Key Components

    Quadlet Orchestration: Managed via systemd for seamless integration with the host OS.

    Hardware-Aware Automation: Logic to detect NVIDIA hardware and apply specific compute runtime configurations.

    Version Control: Full configuration history managed via Git to ensure auditability and deployment consistency.

Getting Started

To deploy the stack on a new host:

    Clone the repository.

    Verify hardware compatibility:
    ./scripts/check-hardware.sh

    Synchronize configurations and activate services:
    ./scripts/deploy.sh
