#!/bin/bash

#!/bin/bash

# This script monitors CPU usage using the 'top' command.

while true; do
    # Get the current CPU idle percentage from 'top'
    cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | cut -d'%' -f1)

    # Calculate CPU usage
    cpu_usage=$(echo "100 - $cpu_idle" | bc)

    # Print the CPU usage
    echo "$(date '+%Y-%m-%d %H:%M:%S') - CPU Usage: $cpu_usage%"

    # Sleep for a specified interval (e.g., 5 seconds)
    sleep 5
done