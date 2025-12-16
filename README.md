
A simple Bash script to update Linux hosts file with aggressive blocking of ads, trackers, telemetry, adult content, malicious content, etc.
=======================================
Requirements:

Wget and sed must be installed on the system.

Wget is used for downloading various hosts files; sed - for necessary editing of them.

Awk is strongly recommended, as it diminishes size of resulting hosts file by removing identical lines in it.

---------------------------------------
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

--------------------------------------------------------------------------------------

For much better protection, in addition to this hosts file, you may use web browser addons, such as Ublock Origin:

https://github.com/gorhill/uBlock

You may add Ublock Origin's additional filters:

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_Base/filter.txt

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_3_Spyware/filter.txt

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_4_Social/filter.txt

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_14_Annoyances/filter.txt

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_15_DnsFilter/filter.txt

https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_11_Mobile/filter.txt

https://raw.githubusercontent.com/sjhgvr/oisd/refs/heads/main/oisd_big.txt

https://scripttiger.github.io/alts/adblock/blacklist-gps.txt

https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/ultimate.txt

https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/tif.txt

https://github.com/badmojr/1Hosts/releases/download/latest/1hosts-Xtra_adblock.txt

https://raw.githubusercontent.com/ppfeufer/adguard-filter-list/master/blocklist

--------------------------------------------------------------------------------------

And also I suggest using DNS over HTTPS (DoH) in your web browser.

I recommend Adguard Family DoH public free server:

https://family.adguard-dns.com/dns-query

--------------------------------------------------------------------------------------
Notes:

Run this script with root privileges.

Size of resulting hosts file is currently around 73 Mb.

IPv6 is not supported by this hosts file; IPv4 only.

--------------------------------------------------------------------------------------

The script can be scheduled to run daily with cron, at a prescribed time (e.g. 6:30am).

In Debian it can be done this way:

Copy the script to /etc/cron.daily

Under root, run

crontab -e

or

sudo crontab -e

Add last line:

30 06 * * * /etc/cron.daily/updhosts.sh

Save, and restart cron:

sudo systemctl restart cron

or, simply reboot PC.

--------------------------------------------------------------------------------------

Use script at your own risk. Some legitimate websites could stop working.

In this case, try less restrictive original hosts files (e.g. 1Hosts Lite, HaGeZi Multi PRO, etc.).

Modify the script to suit your needs.

No further updates are planned.
