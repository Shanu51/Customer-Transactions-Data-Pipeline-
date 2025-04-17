# Project Assignment – Customer Transactions Data Pipeline


## Goal
To build a ingestion pipeline using Azure services that processes mock customer transaction data, validates it, and loads it into an Azure SQL Database. This project demonstrates real-time data ingestion and basic error handling in a cloud environment.

## Skill Distribution

| Skill                  | Weight |
|------------------------|--------|
| SQL                    | 30%    |
| Python                 | 30%    |
| Azure Data Factory     | 20%    |
| Azure Storage          | 20%    |

---

## Detailed Tasks

### SQL (30%)
- Designed a normalized target schema.
- Created DDL and DML scripts for table creation and insertion.
- Wrote 3+ analytical queries on the ingested dataset.

### Python (30%)
- Generated mock CSV files with <200 customer transaction records.
- Implemented cleaning logic (null handling, formatting, duplicate removal).
- Saved cleaned outputs to Azure Blob Storage (processed/ folder).

### Azure Data Factory – ADF (20%)
- Built and deployed pipelines triggered by new file uploads.
- Integrated Python-cleaned files where applicable.
- Implemented error logging and conditional routing of failed files.
- Enabled event-based triggers for automation.

### Azure Storage (20%)
- Structured containers: `raw/`, `processed/`, `logs/`, `failed/`
- Uploaded input and cleaned CSV files accordingly.
- Implemented security using SAS tokens, RBAC, and Azure Key Vault.

---

## 6. Azure Usage Reporting
- Azure resources were used within quota.
- Tracked daily usage in DSR (e.g., Blob usage, ADF activity, SQL DB queries).
- Ensured no resource overuse for cost efficiency.

---

## 7. Deliverables
- GitHub repo with well-documented code & README  
- SQL Scripts: DDL, DML, and sample queries  
- Azure Data Factory pipeline JSON exports or screenshots  
- Architecture diagram (Draw.io / PowerPoint format)  
- Mini-documentation (1–2 pages)  

---

## 🗂 Folder Structure
