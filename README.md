# bash4hosts
A simple Bash script to create/update Linux hosts file with aggressive blocking of ads, trackers, telemetry, adult content, malicious content, etc.

Requirements:
Wget and sed must be installed on the system.
Wget is used for downloading various hosts files; sed is used for necessary editing of them.

Resulting hosts file contains the following collections of hosts files:

- Steven Black's Unified hosts + gambling + adult + social
https://github.com/StevenBlack/hosts

- 1Hosts (Xtra) Beta
https://github.com/badmojr/1Hosts

- HaGeZi's Multi ULTIMATE
https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#ultimate

- HaGeZi's Threat Intelligence Feeds
https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#tif

- Stephan van Ruth's Big oisd
https://github.com/sjhgvr/oisd

- Stephan van Ruth's NSFW oisd
https://github.com/sjhgvr/oisd

Notes:
Size of resulting hosts file is currently around 73 Mb.
IPv6 is not supported by this hosts file; IPv4 only.
Use at your own risk. No futher updates are planned.
