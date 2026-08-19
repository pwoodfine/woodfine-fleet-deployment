#!/bin/bash
# Woodfine Management Corp | Tier 1 to Tier 2 Strict Pull Diode (Showcase)
set -euo pipefail

REMOTE_TARGET="<REDACTED_IP>"
REMOTE_USER="operator"
TODAY=$(date +%Y-%m-%d)
LOCAL_PS="${LOCAL_PS:?LOCAL_PS must be set (2026-08-19 GitHub-exposure remediation - no real-value default)}"

echo "[SYSTEM] Extracting flawless reports via V6 Strict Pull Diode..."
mkdir -p "${LOCAL_PS}/outbox"

rsync -aqz "${REMOTE_USER}@${REMOTE_TARGET}:/opt/deployments/pointsav-fleet-deployment/media-marketing-landing/app-mediakit-telemetry/outbox/" "${LOCAL_PS}/outbox/"
rsync -aqz "${REMOTE_USER}@${REMOTE_TARGET}:/opt/deployments/pointsav-fleet-deployment/media-marketing-landing/app-mediakit-telemetry/assets/ledger_telemetry.csv" "${LOCAL_PS}/outbox/RAW_POINTSAV_${TODAY}.csv"

find "${LOCAL_PS}/outbox" -name "RAW_POINTSAV_*.csv" -type f -mtime +9 -exec rm {} \;
echo "[SUCCESS] Ledgers mathematically locked into local outboxes."
