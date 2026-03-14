# GUIDE: SLM Point-in-Time Execution
**Customer:** Woodfine Management Corp.
**Target Environment:** cluster-totebox-personnel
**Operation:** Local AI Data Extraction

## 1. Operational Overview
This protocol governs the manual invocation of the local Small Language Model (SLM). Because the Totebox Archive prohibits omnipresent AI daemons to protect data integrity, operators must trigger the extraction filter manually on spooled assets.

## 2. Execution Protocol
To extract structured intelligence from a raw ingestion file (e.g., an email or unstructured memo), execute the following pipeline from the Command Terminal:

1. Identify the target raw file in the spool directory:
   `ls -la /opt/woodfine/cluster-totebox-personnel/spool/`

2. Pipe the raw file into the `service-slm` extraction filter, specifying the output destination:
   `cat /opt/woodfine/cluster-totebox-personnel/spool/raw_input.txt | /opt/pointsav/bin/service-slm --protocol EXTRACT > /opt/woodfine/cluster-totebox-personnel/drafts/clean_output.md`

3. Verify the output draft before merging it into the active repository:
   `cat /opt/woodfine/cluster-totebox-personnel/drafts/clean_output.md`

## 3. Security Constraints
The SLM runs in a severed network container. It cannot access the internet to verify external facts. It will only extract and structure the exact physical data present in the `raw_input.txt` file.
