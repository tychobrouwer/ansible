#!/bin/sh
export PBS_PASSWORD="---REDACTED---"
export PBS_FINGERPRINT="---REDACTED---"

/usr/bin/proxmox-backup-client backup root.pxar:/media/file-share --repository root@pam@192.168.178.108:main
