# Woodfine Platform: cluster-totebox-corporate

**Status: Active GCP Sandbox (Inside-Out Provisioning)** | **Workload: service-content**

## 📜 Mandate
This cluster is the dedicated data vault for corporate institutional knowledge. It is currently operating in an "Inside-Out" deployment phase: the Tier-5 `service-content` Rust engine is executing directly on a standard GCP instance for live Gemini API testing. 

Once the linguistic compilation logic is verified, this engine will be cryptographically wrapped inside the Tier-3 `os-totebox` unikernel for final production deployment.

## 🌐 Connectivity
* **Hardware Target:** GCP e2-micro (Temporary Linux Substrate)
* **Uplink:** PointSav Secure Tunnel (PSST) via Node 2 (GCP Relay)
