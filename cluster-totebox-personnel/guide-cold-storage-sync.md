---
schema: foundry-doc-v1
title: "Cold Storage Backup — Personnel Archive"
slug: guide-cold-storage-sync
type: guide
section: personnel-and-identity
status: active
audience: operators
bcsc_class: current-fact
last_edited: 2026-05-25
editor: pointsav-engineering
---

# Guide — Cold Storage Backup (Personnel Archive)

This guide covers executing a quarterly cold-storage backup of the personnel archive maildir to a local physical drive. Because the archive uses flat-file storage, no export tools or vendor software are required — a standard `rsync` command produces a 1:1 copy.

## Prerequisites

- A secure external hard drive mounted at `/Volumes/Woodfine-Cold-Storage/`.
- Network access to the personnel archive node (`<REDACTED_IP>`).
- SSH credentials for the `<REDACTED_SSH_ACCOUNT>` account on the archive node.

## Procedure

Plug the secure hard drive into the operator workstation and run:

```bash
rsync -avz --progress <REDACTED_SSH_ACCOUNT>@<REDACTED_IP>:/assets/personnel-maildir/ /Volumes/Woodfine-Cold-Storage/personnel-maildir/
```

## Expected Outcome

`rsync` completes with no errors. The `/Volumes/Woodfine-Cold-Storage/personnel-maildir/` directory is an exact copy of the archive node's maildir. Verify with:

```bash
rsync --dry-run -avz <REDACTED_SSH_ACCOUNT>@<REDACTED_IP>:/assets/personnel-maildir/ /Volumes/Woodfine-Cold-Storage/personnel-maildir/
# Expected: 0 files to transfer
```

---

*Copyright © 2026 Woodfine Capital Projects Inc. All rights reserved.*

*Woodfine Capital Projects™, Woodfine Management Corp™, PointSav Digital Systems™, Totebox Orchestration™, and Totebox Archive™ are trademarks of Woodfine Capital Projects Inc., used in Canada, the United States, Latin America, and Europe. All other trademarks are the property of their respective owners.*
