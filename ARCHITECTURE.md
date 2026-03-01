# 🏛️ PointSav System Architecture
**Governed by the Sovereign Data Foundation**

## The 3-Layer Stack
To decouple operational logic from underlying hardware, PointSav utilizes a strict 3-Layer Stack:

1. **Infrastructure Layer** (`os-infrastructure`): Lightweight hypervisor managing bare-metal resources.
2. **Platform Layer** (`os-totebox`): Capability-aware micro-kernel providing isolated data vaults.
3. **Delivery Layer** (`app-*`): Interfaces serving distinct organizational needs.

## The Foundation
The root of trust relies on `system-security` (Capability-Based Manager), written entirely in `no_std` Rust, interfacing with the formally verified `system-substrate`.
