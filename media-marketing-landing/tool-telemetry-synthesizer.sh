#!/bin/bash
# Woodfine Management Corp | Tier-2 Cloud Synthesis Trigger (Showcase)
set -euo pipefail

REMOTE_TARGET="<REDACTED_IP>"
REMOTE_USER="operator"

echo "[SYSTEM] Initiating Manual Tier-2 Telemetry Synthesis (V6 Architecture)..."
ssh "${REMOTE_USER}@${REMOTE_TARGET}" "sudo bash -c '
rm -f /opt/deployments/pointsav-fleet-deployment/media-marketing-landing/app-mediakit-telemetry/outbox/*.md 2>/dev/null || true
rm -f /opt/deployments/woodfine-fleet-deployment/media-marketing-landing/app-mediakit-telemetry/outbox/*.md 2>/dev/null || true

cd /opt/deployments/pointsav-fleet-deployment/media-marketing-landing
FLEET_ID=POINTSAV python3 /usr/local/bin/omni-matrix-engine.py

cd /opt/deployments/woodfine-fleet-deployment/media-marketing-landing
FLEET_ID=WOODFINE python3 /usr/local/bin/omni-matrix-engine.py
'"
echo "[SUCCESS] V6 Markdown reports mathematically forged."
