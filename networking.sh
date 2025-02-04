#!/bin/bash

SERVER="google.com"
PING_COUNT=4

echo "Pinging $SERVER..."

if ping -c $PING_COUNT "$SERVER" > /dev/null; then
  echo "$SERVER is reachable."
else
  echo "Failed to reach $SERVER."
fi

============================================================================================

#!/bin/bash

HOST="localhost"
START_PORT=1
END_PORT=1024

echo "Scanning open ports on $HOST from $START_PORT to $END_PORT..."

for ((port=$START_PORT; port<=$END_PORT; port++)); do
  (echo >/dev/tcp/$HOST/$port) &>/dev/null && echo "Port $port is open"
done
