# Linux_Projects

### Installation & Usage
Download the script:
~~~
Bash
curl -O https://raw.githubusercontent.com/your-username/your-repo-name/main/server-stats.sh
~~~
Make it executable:
~~~
Bash
chmod +x server-stats.sh
~~~
Run it:
~~~
Bash
./server-stats.sh
~~~
## 1. [Server Performance Stats](https://roadmap.sh/projects/server-stats)
This script provides a high-level overview of system resource utilization with clean, formatted output suitable for terminal viewing.
### Features
The script provides a dashboard view of:
  - Identity: Current active user session via whoami.
  - CPU Profile: Total logical processor count and current total CPU load.
  - RAM Health: Real-time percentage of Used vs. Available memory.
  - Storage Snapshot: Readable table of physical disk partitions and their remaining capacity.
  - Process Tracking: 
    - Top 5 by CPU: Quickly identify scripts or apps spiking the processor.
    - Top 5 by RAM: Monitor memory-heavy applications to prevent OOM (Out Of Memory) errors.
### Prerequisites
The script is designed to run on almost any modern Linux distribution (Ubuntu, Debian, Fedora, CentOS, etc.) using:
  - bash
  - awk
  - procps (top, ps, free)
  - util-linux (column, nproc)
### Sample Output
~~~
** System Statistics Report **
==============================

[ Current User ]
admin

[ CPU Information ]
Total Processors: 8
Total CPU Usage: 4.2%

[ Memory Information ]
Used: 22.45% | Available: 77.55%

[ Disk Usage ]
File System          Used%      Avail%    
/dev/nvme0n1p2       34%        611G      

[ Top 5 Processes by CPU ]
USER   PID    %CPU  COMMAND
root   1240   2.5   /usr/lib/Xorg
user   4502   1.8   /usr/bin/gnome-shell

[ Top 5 Processes by Memory ]
USER   PID    %MEM  COMMAND
user   8921   8.4   /usr/lib/firefox/firefox
user   4502   4.2   /usr/bin/gnome-shell

==============================
~~~
