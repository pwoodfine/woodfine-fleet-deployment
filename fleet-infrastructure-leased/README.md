<div align="center">

# Node 1: Physical Infrastructure (Muscle)
### *Hardware Forensics & Silicon Boundaries*
**Status: Verified (Tier 0 Base) | Tier: 1. Infrastructure**

</div>

---

## 💻 Silicon Profile | Perfil de Silicio
This node operates as the bare-metal execution environment for the **PointSav Private Network (PPN)**. It is responsible for hosting isolated guest VMs and routing decentralized workloads.

| Component | Specification | Hardware ID | Sovereign Notes |
| :--- | :--- | :--- | :--- |
| **Institutional ID** | `fleet-infrastructure-leased` | Node 1 | Primary Edge Anchor. |
| **System Model** | MacBookPro7,1 (Mid-2010) | N/A | Apple SMC & UEFI Boot Architecture. |
| **CPU** | Intel Core 2 Duo P8600 @ 2.40GHz | Penryn | **VT-x Supported.** No VT-d (IOMMU absent). |
| **NIC** | Broadcom BCM4322 802.11n | `14e4:432b` | Requires Virtualization Bridge (KVM) for guest access. |

## 🛡️ Architectural Constraints
Because this silicon lacks **VT-d** (Directed I/O), hardware passthrough is physically impossible. The **Virtualization Bridge** utilizes `vendor-linux` (Linux Mint) to provide the VirtIO environment for the `os-infrastructure.iso` payload.

---
*© 2026 Woodfine Management Corp.*
