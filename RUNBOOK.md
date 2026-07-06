# AI Stack Operational Runbook

## 1. Directory Structure Reference
- **Source of Truth:** \~/ai-stack-deployment/ (Git tracked)
- **Active System Links:** ~/.config/containers/systemd/ (The 'Live' environment)
- **Automation:** \~/ai-stack-deployment/scripts/

## 2. Standard Operating Procedures (SOPs)

### A. Deployment Workflow
To update the system after modifying a config:
1. `cd ~/ai-stack-deployment/scripts/`
2. `./deploy.sh` 
   *Note: This automatically symlinks your configs and triggers a daemon-reload.*

### B. Hardware Diagnostics
If moving to new hardware, run:
`~/ai-stack-deployment/scripts/check-hardware.sh`
*This will confirm GPU detection and CPU fallback status.*

### C. Service Management
Avoid system-wide restarts to prevent GUI session drops. Use targeted commands:
- **Restart Service:** `systemctl --user restart ai-stack-pod.service`
- **Check Logs:** `journalctl --user -u ai-stack-pod.service -f`

## 3. Recovery
- **If configs break:** Delete the symlinks in `~/.config/containers/systemd/` and re-run `deploy.sh`.
- **Systemd Tainting:** If a service fails, check `systemctl --user status` for specific error codes in the unit file.
