A simple Bash script to update Linux hosts file with regular blocking of ads, trackers, telemetry, adult content, malicious content, etc. (download and use hosts.sh script file). So, this is a regular variant.
=======================================
Alternatively, a modification of this script can be used, with aggressive blocking of ads, trackers, telemetry, adult content, malicious content, etc. (download and use updhosts.sh script file). So, this is an aggressive variant.
=======================================

Requirements:

Wget and sed must be installed on the system.

Wget is used for downloading various original hosts files; sed - for necessary editing of them.

Awk is strongly recommended, as it diminishes size of resulting hosts file by removing identical lines in it.

---------------------------------------

Regular variant (hosts.sh)

Resulting hosts file contains the following collections of hosts files:

- Steven Black's Unified hosts + gambling + adult + social
https://github.com/StevenBlack/hosts

- Adguard and EasyPrivacy hosts from r-a-y mobile-hosts 
https://github.com/r-a-y/mobile-hosts

- Stephan van Ruth's Big oisd
https://github.com/sjhgvr/oisd

- Stephan van Ruth's NSFW oisd
https://github.com/sjhgvr/oisd

---------------------------------------

Aggressive variant (updhosts.sh)

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

For much better protection, in addition to hosts file, you may use web browser addons, such as Ublock Origin:

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
==============
Run these scripts with root privileges.

They will replace your existing /etc/hosts file. Back it up beforehand, if needed.

Size of resulting hosts file is currently around 23 Mb for regular variant; and around 73 Mb for aggressive variant.

IPv6 is not supported by these hosts file; IPv4 only.

--------------------------------------------------------------------------------------

The scripts can be scheduled to run daily with cron, at a prescribed time (e.g. 6:30am).

In Debian Linuxs it can be done this way, for regular variant (hosts.sh):

Copy the script to /etc/cron.daily

Under root, run

crontab -e

or

sudo crontab -e

Add last line:

30 06 * * * /etc/cron.daily/hosts.sh

Save, and restart cron:

sudo systemctl restart cron

or, simply reboot PC.

--------------------------------------------------------------------------------------

Use the scripts at your own risk. Some legitimate websites could stop working.

In this case, you may try using less restrictive original hosts files (e.g. 1Hosts Lite, HaGeZi Multi PRO, Small oisd, etc.) in the scripts.

Modify the scripts to suit your needs.

No further updates are planned.
