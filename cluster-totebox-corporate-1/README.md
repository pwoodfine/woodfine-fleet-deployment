# Woodfine Platform: node-wf-vault-01
### *Federated Vault Architecture & The Payload Split*

**Status: Operational** | **Workload: os-totebox**

## 📜 Mandate
This cluster operates as the dedicated data vault for corporate institutional knowledge. It is engineered to mathematically guarantee structural data ownership (DARP) and processing integrity (SOC 3).

## 🏛️ Federated Vault Architecture (SYS-ADR-13)
The `os-totebox` environment executes a strict decoupling of stateful data and stateless compilation logic:
- **Stateful Archive:** `/assets/` (Inert Binaries) and `/ledger/` (YAML Pointers).
- **Stateless Engine:** `service-content` (The Linguistic Compiler).
- **Isolated Workspace:** `service-study/` (Ephemeral project sandboxes).

---
*© 2026 Woodfine Management Corp.*
