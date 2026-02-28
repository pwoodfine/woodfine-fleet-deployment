<div align="center">

# Woodfine Fleet Manifest 
### *Operational Deployment & Fleet Orchestration*

</div>

---

## 🚀 The Deployment Pipeline
Woodfine Management Corp. does not compile operating systems. We deploy **Silicon-Pinned ISOs** manufactured by the PointSav Foundry onto perfectly matched physical hardware.

### 🎛️ Active Fleet Topology (The 3-Node Mesh)

| Node Role | Target Repository | ISO Source | Authorized Silicon |
| :--- | :--- | :--- | :--- |
| **Node 1 (Muscle)** | `fleet-infrastructure-leased` | `pointsav/os-infrastructure` | Intel P8600 / BCM4322 |
| **Node 2 (Relay)** | `gateway-cloud-relay` | `pointsav/os-totebox` | GCP / Standard VirtIO |
| **Node 3 (Brain)** | `route-network-admin` | `pointsav/os-network-admin` | Intel i5-2400S / BCM57765 |

### 🛡️ Deployment Protocol
1. **Pull:** Woodfine administrators pull the compiled ISOs from the PointSav release registry.
2. **Flash:** ISOs are flashed to physical USB media via the Command Node.
3. **Boot:** Target nodes are booted. The OS will auto-verify the physical silicon footprint before executing the seL4 root task.
