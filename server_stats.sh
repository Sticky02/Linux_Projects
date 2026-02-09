#!/bin/bash

clear

printf "** System Statistics Report **\n"
printf "==============================\n"

# 1. User Info
printf "\n[ Current User ]\n"
whoami

# 2. Processor Count
printf "\n[ CPU Information ]\n"
printf "Total Processors: "
nproc

# 3. CPU Usage 
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
printf "Total CPU Usage: $cpu_usage\n"

# 4. Memory Information
printf "\n[ Memory Information ]\n"
free | awk 'NR==2{printf "Used: %.2f%% | Available: %.2f%%\n", $3*100/$2, $7*100/$2}'

# 5. Disk Usage
printf "\n[ Disk Usage ]\n"
printf "%-20s %-10s %-10s\n" "File System" "Used%" "Avail%"
df -h | grep '^/dev/' | awk '{printf "%-20s %-10s %-10s\n", $1, $5, $4}'

# 6. Top 5 Processes by CPU
printf "\n[ Top 5 Processes by CPU ]\n"
ps aux --sort=-%cpu | head -n 6 | awk '{print $1, $2, $3, $11}' | column -t

# 7. Top 5 Processes by Memory (Fixed label)
printf "\n[ Top 5 Processes by Memory ]\n"
ps aux --sort=-%mem | head -n 6 | awk '{print $1, $2, $4, $11}' | column -t

printf "\n==============================\n"
