#!/bin/bash

CPU_IDLE=$(top -b -n1 | grep "Cpu(s)" | awk '{print $5}')
CPU_UTILIZATION=$(echo "100 - $CPU_IDLE" | bc)
echo "Current CPU Utilization: $CPU_UTILIZATION%"