<div align="center">

# Node 3: Command Gateway (Brain)
### *Hardware Forensics & Cryptographic Authority*
**Status: Active | Tier: 4. Gateway**

</div>

---

## 💻 Silicon Profile | Perfil de Silicio
This node operates as the **Command Authority** for the entire Woodfine Fleet. It holds the cryptographic keys (MBA) and serves as the single point of entry for infrastructure orchestration.

| Component | Specification | Hardware ID | Sovereign Notes |
| :--- | :--- | :--- | :--- |
| **System Model** | iMac 12,1 (Mid-2011) | N/A | Apple SMC & UEFI Boot Architecture. |
| **CPU** | Intel Core i5-2400S | Sandy Bridge | Verified seL4 Boot Boundary Entry: **0x1002a3**. |
| **Network (NIC)** | Broadcom BCM57765 Gigabit | `14e4:16b4` | Primary `system-substrate` uplink. |
| **Role** | Command Terminal | N/A | Executes the `foundry_sync` orchestration engine. |

## 🛡️ Architectural Constraints
As the root of trust, this machine utilizes **Machine-Based Authorization (MBA)**. Four distinct cryptographic identities (`pwoodfine`, `jwoodfine`, `pointsav`, `woodfine`) are physically anchored to this node. 

**The Diode Standard:** Command logic flows strictly outward from this node to the rest of the 3-Node Mesh. It does not accept incoming connections from the public internet.
