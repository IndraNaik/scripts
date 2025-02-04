# Shell Scripts Collection  
This repository contains a set of useful shell scripts for system monitoring, networking, automation, and DevOps tasks.

## Table of Contents  
- [System Monitoring Scripts](#system-monitoring-scripts)  
- [File Backup Script](#file-backup-script)  
- [Networking Scripts](#networking-scripts)
- [Install](#install-script)
- [Update-Upgrade](#update-upgrade)
- [Usage](#usage)  
- [License](#license)
- [Requirements](#requirements) 
- [Contributions](#contributions)

---

## System Monitoring Scripts  

### **1. Disk Usage Monitoring**  
Checks the disk usage and warns if usage exceeds a set threshold.  
 
### **2. Memory Usage Monitoring**  
Alerts if free memory drops below a specified threshold.   

### **3. Process Monitoring**  
Checks if a specific process (like `nginx`) is running and starts it if not.  

```bash
./sys_monitor.sh
```

---

## File Backup Script  

### **Backup Directory to Archive**  
Creates a `.tar.gz` archive of the specified directory.  

```bash
./backup.sh
```

---

## Networking Scripts  

### **1. Server Status Check**  
Pings a server to check its availability.  

### **2. Open Port Scanner**  
Scans open ports on a host.  

```bash
./networking.sh
```

---

## Installing Package Scripts  

### ** Installing any package**    
This script will install any package passed as argument

```bash
./install.sh
```

---

## Updating and Upgrading System Scripts  

### ** Updating and Upgrading system packages**    
This script will update and upgrade the system packages

```bash
./update.sh
```

---

## Usage  
1. **Make scripts executable:**  
   ```bash
   chmod +x <script_name>.sh
   ```
2. **Run the scripts:**  
   ```bash
   ./<script_name>.sh
   ```

---

## Requirements  
- Bash Shell


## License  
This project is licensed under the MIT License.  

---

## Contributions  
Feel free to submit issues or pull requests for improvements!

