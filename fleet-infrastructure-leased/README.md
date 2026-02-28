<div align="center">

# Node 1: Physical Infrastructure (Muscle)
### *Hardware Forensics & Silicon Boundaries*
**Status: Provisioned | Tier: 1. Infrastructure**

</div>

---

## 💻 Silicon Profile | Perfil de Silicio
This node operates as the bare-metal execution environment for the **PointSav Private Network (PPN)**. It is responsible for hosting isolated guest VMs and routing decentralized workloads.

| Component | Specification | Hardware ID | Sovereign Notes |
| :--- | :--- | :--- | :--- |
| **System Model** | MacBookPro7,1 (Mid-2010) | N/A | Apple SMC & UEFI Boot Architecture. |
| **CPU** | Intel Core 2 Duo P8600 @ 2.40GHz | Penryn | **VT-x Supported.** No VT-d (IOMMU absent). |
| **Memory** | 4GB DDR3 | N/A | seL4 Static Allocation Target: 3.6GB Usable. |
| **Storage** | 250GB Hitachi HDD | `sda` | Requires memory-buffered write drivers for performance. |
| **Network (NIC)** | Broadcom BCM4322 802.11n | `14e4:432b` | Requires Para-Virtualized Bridge (VirtIO) for guest access. |
| **Graphics** | NVIDIA GeForce 320M | `10de:08a0` | Headless execution. Basic EFI Framebuffer required. |

## 🛡️ Architectural Constraints
Because this silicon lacks **VT-d** (Directed I/O), hardware passthrough of the Broadcom NIC to virtual machines is physically impossible. 

**The VirtIO Solution:** The `os-infrastructure` Root Task will hold the Broadcom driver and expose a `system-network-interface` VirtIO bridge to all guest operating systems.
