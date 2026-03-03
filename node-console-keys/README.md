# node-console-keys | Master Aggregator Terminal

## 📜 Mandate
This console serves as the **Tier-5 System Administration** interface for the aggregated Woodfine clusters. It does not communicate with the Mesh directly; instead, it establishes a secure paring with the `gateway-interface-command`.

## 🌐 Connectivity
* **Target:** `gateway-interface-command` (Mesh VM)
* **Protocol:** PointSav Secure Tunnel (PSST)
* **Authorization:** Machine-Based Authorization (MBA) - F-Key Authority

## 📂 Managed Clusters
By authorizing via the Gateway, this console administers:
1. `cluster-totebox-personnel-1`
2. `cluster-totebox-corporate-1`
3. `cluster-totebox-property-1`

## ⚠️ Security Restriction
This console has **zero visibility** into `cluster-totebox-personnel-2`. It is cryptographically siloed from the Standalone Email environment.
