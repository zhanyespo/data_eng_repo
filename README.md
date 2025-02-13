# Data Engineering Repository (`data_eng_repo`)

## Overview
This repository contains Docker-based **Open-Source Data Warehouse (DWH)** tools, ETL tools, and Business Intelligence (BI) tools.

## Tools Included
### **Data Warehouses**
- **ClickHouse** - Fast analytical database.
- **Greenplum** - PostgreSQL-based MPP DWH.
- **PostgreSQL + Citus** - Distributed DWH.

### **ETL & Data Pipeline Tools**
- **Airbyte** - Easy-to-use ELT tool.
- **Apache NiFi** - Data integration tool.
- **dbt** - SQL-based transformation tool.

### **BI & Visualization**
- **Metabase** - No-code analytics.
- **Apache Superset** - BI dashboarding.
- **Redash** - SQL-based dashboard.

## Getting Started
### **1. Setup Project Structure**
Run the PowerShell script to generate the required folders:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
./setup.ps1
```

### **2. Running Docker Containers**
#### **Option 1: Run Individual Services**
Navigate to the specific service folder and run:
```bash
docker-compose up -d
```
Example for ClickHouse:
```bash
cd clickhouse
docker-compose up -d
```

#### **Option 2: Run All Services Together**
```bash
docker-compose -f docker-compose-all.yml up -d
```

### **3. Stopping Docker Containers**
#### **Stopping Individual Services**
```bash
docker-compose down
```
#### **Stopping All Services**
```bash
docker-compose -f docker-compose-all.yml down
```

### **4. Checking Running Containers**
```bash
docker ps
```

### **5. Viewing Container Logs**
```bash
docker logs <container_name>
```

### **6. Accessing a Running Container’s Shell**
```bash
docker exec -it <container_name> /bin/bash
```

## Configuration & Customization
- Configuration files are stored in each tool’s `config/` directory.
- SQL initialization scripts are inside `scripts/` folders.
- Docker volumes persist data even when containers are restarted.

## Contributing
- Fork the repo and create pull requests for improvements.
- Follow the best practices for Docker deployments.
- Update documentation when adding or modifying services.

## Troubleshooting
### **1. Restarting a Specific Service**
```bash
docker-compose restart <service_name>
```
### **2. Cleaning Up Unused Containers and Images**
```bash
docker system prune -a
```
### **3. Removing Docker Volumes**
```bash
docker volume rm $(docker volume ls -q)
```

