#!/bin/bash

cd /etc
wget -tries=3 -O hosts1.txt https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts
# Removing empty lines
sed -i '/^$/d' hosts1.txt
# Removing all commented lines
sed -i '/^#/d' hosts1.txt
# Add an empty line at the end
sed -i -e '$a\' hosts1.txt
# Delete first 14 lines
sed -i -e "1,14d" hosts1.txt

wget -tries=3 -O hosts2.txt https://github.com/badmojr/1Hosts/releases/download/latest/1hosts-Xtra_hosts.txt
# Removing empty lines
sed -i '/^$/d' hosts2.txt
# Removing all commented lines
sed -i '/^#/d' hosts2.txt
# Add an empty line at the end
sed -i -e '$a\' hosts2.txt
# Delete first 14 lines
sed -i -e "1,14d" hosts2.txt

wget -tries=3 -O hosts3.txt https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/hosts/ultimate.txt
# Removing empty lines
sed -i '/^$/d' hosts3.txt
# Removing all commented lines
sed -i '/^#/d' hosts3.txt
# Add an empty line at the end
sed -i -e '$a\' hosts3.txt

wget -tries=3 -O hosts4.txt https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/hosts/tif.txt
# Removing empty lines
sed -i '/^$/d' hosts4.txt
# Removing all commented lines
sed -i '/^#/d' hosts4.txt
# Add an empty line at the end
sed -i -e '$a\' hosts4.txt

wget -tries=3 -O hosts5.txt https://raw.githubusercontent.com/sjhgvr/oisd/refs/heads/main/domainswild2_big.txt
# Removing empty lines
sed -i '/^$/d' hosts5.txt
# Removing all commented lines
sed -i '/^#/d' hosts5.txt
# Adding 0.0.0.0 to each line
sed -i -e 's/^/0.0.0.0 /' hosts5.txt
# Add an empty line at the end
sed -i -e '$a\' hosts5.txt

wget -tries=3 -O hosts6.txt https://raw.githubusercontent.com/sjhgvr/oisd/refs/heads/main/domainswild2_nsfw.txt
# Removing empty lines
sed -i '/^$/d' hosts6.txt
# Removing all commented lines
sed -i '/^#/d' hosts6.txt
# Adding 0.0.0.0 to each line
sed -i -e 's/^/0.0.0.0 /' hosts6.txt
# Add an empty line at the end
sed -i -e '$a\' hosts6.txt

# Merging all hosts text files into one file
cat hosts1.txt hosts2.txt hosts3.txt hosts4.txt hosts5.txt hosts6.txt > myhosts.txt
# Removing unneeded hosts files
rm -f hosts1.txt hosts2.txt hosts3.txt hosts4.txt hosts5.txt hosts6.txt
# Remove all empty lines
sed -i '/^$/d' myhosts.txt
# Removing duplicate lines
awk '!seen[$0]++' myhosts.txt > myhosts
# Add an empty line at the end
sed -i -e '$a\' myhosts
# Removing unneeded myhosts.txt file
rm -f myhosts.txt
# Add first necessary lines
sed -i '1 i\0.0.0.0 0.0.0.0' myhosts
sed -i '1 i\255.255.255.255 broadcasthost' myhosts
sed -i '1 i\127.0.0.1 localhost' myhosts
# Replacing existing hosts file and renaming myhosts
rm -f hosts
mv myhosts hosts
