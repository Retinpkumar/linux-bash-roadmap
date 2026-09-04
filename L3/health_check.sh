#!/bin/bash
mem_available=$(free -m | grep Mem | awk '{print $7}')
disk_used_raw=$(df -h / | tail -1 | awk '{print $5}')
disk_used="${disk_used_raw%\%}"

echo "Available memory: ${mem_available}MB"
echo "Disk used: ${disk_used}%"

if [ "$disk_used" -gt 85 ]; then
    echo "FLAG: Disk usage is above threshold (85%)"
else
    echo "OK: Disk usage is within limits"
fi

if [ "$mem_available" -lt 1182 ]; then
    echo "FLAG: Available memory is below threshold (15% of total)"
else
    echo "OK: Available memory is within limits"
fi
