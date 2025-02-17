# 📜 Shell Scripts Collection  
A collection of useful shell scripts for system monitoring, networking, automation, and DevOps tasks. 🚀  

---

## 📌 Table of Contents  
- [🖥️ System Monitoring Scripts](#-system-monitoring-scripts)  
- [📂 File Backup Script](#-file-backup-script)  
- [🌐 Networking Scripts](#-networking-scripts)  
- [📦 Install Script](#-installing-package-scripts)  
- [🔄 Update & Upgrade](#-updating-and-upgrading-system-scripts)  
- [📌 Usage](#-usage)  
- [⚙️ Requirements](#-requirements)  

---

## 🖥️ System Monitoring Scripts  

### **1️⃣ Disk Usage Monitoring**  
🛑 Checks the disk usage and warns if usage exceeds a set threshold.  

### **2️⃣ Memory Usage Monitoring**  
⚠️ Alerts if free memory drops below a specified threshold.  

### **3️⃣ Process Monitoring**  
🔍 Checks if a specific process (like `nginx`) is running and starts it if not.  

```bash
./sys_monitor.sh
```

---

## 📂 File Backup Script  

### **Backup Directory to Archive**  
📦 Creates a `.tar.gz` archive of the specified directory.  

```bash
./backup.sh
```

---

## 🌐 Networking Scripts  

### **1️⃣ Server Status Check**  
📡 Pings a server to check its availability.  

### **2️⃣ Open Port Scanner**  
🔎 Scans open ports on a host.  

```bash
./networking.sh
```

---

## 📦 Installing Package Scripts  

### **Install Any Package**  
💾 This script installs any package passed as an argument.  

```bash
./install.sh <package_name>
```

---

## 🔄 Updating and Upgrading System Scripts  

### **Update & Upgrade System Packages**  
📌 This script updates and upgrades the system packages.  

```bash
./update.sh
```

---

## 📌 Usage  
1️⃣ **Make scripts executable:**  
   ```bash
   chmod +x <script_name>.sh
   ```
2️⃣ **Run the scripts:**  
   ```bash
   ./<script_name>.sh
   ```

---

## ⚙️ Requirements  
✅ Bash Shell  

---