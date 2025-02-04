#!/bin/bash

THRESHOLD=80
echo "Checking disk usage..."
# Loop through all mounted filesystems
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5 " " $1}' | while read output; do
  usage=$(echo $output | awk '{print $1}' | sed 's/%//')
  filesystem=$(echo $output | awk '{print $2}')
  
  if [ $usage -ge $THRESHOLD ]; then
    echo "Warning: Disk usage on $filesystem is at ${usage}%"
  fi
done

============================================================================================

#!/bin/bash

THRESHOLD=100  # Set minimum free memory threshold in MB

echo "Checking memory usage..."

free_mem=$(free -m | awk '/^Mem:/ {print $4}')

if [ $free_mem -le $THRESHOLD ]; then
  echo "Warning: Free memory is below ${THRESHOLD}MB. Current free memory: ${free_mem}MB"
else
  echo "Memory usage is within safe limits. Current free memory: ${free_mem}MB"
fi

============================================================================================

#!/bin/bash

PROCESS_NAME="nginx"

if pgrep "$PROCESS_NAME" > /dev/null; then
  echo "$PROCESS_NAME is running."
else
  echo "$PROCESS_NAME is not running. Attempting to start..."
  sudo systemctl start "$PROCESS_NAME"
  echo "$PROCESS_NAME started."
fi
