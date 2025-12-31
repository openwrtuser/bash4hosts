#!/bin/bash

cd /tmp

wget -tries=3 -O hosts1.txt https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts
# Removing empty lines
sed -i '/^$/d' hosts1.txt
# Removing all commented lines
sed -i '/^#/d' hosts1.txt
# Add an empty line at the end
sed -i -e '$a\' hosts1.txt
# Delete first 14 lines
sed -i -e "1,14d" hosts1.txt

wget -tries=3 -O hosts2.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardCNAME.txt
# Removing empty lines
sed -i '/^$/d' hosts2.txt
# Removing all commented lines
sed -i '/^#/d' hosts2.txt
# Add an empty line at the end
sed -i -e '$a\' hosts2.txt

wget -tries=3 -O hosts3.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardCNAMEAds.txt
# Removing empty lines
sed -i '/^$/d' hosts3.txt
# Removing all commented lines
sed -i '/^#/d' hosts3.txt
# Add an empty line at the end
sed -i -e '$a\' hosts3.txt

wget -tries=3 -O hosts4.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardCNAMEClickthroughs.txt
# Removing empty lines
sed -i '/^$/d' hosts4.txt
# Removing all commented lines
sed -i '/^#/d' hosts4.txt
# Add an empty line at the end
sed -i -e '$a\' hosts4.txt

wget -tries=3 -O hosts5.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardCNAMEMicrosites.txt
# Removing empty lines
sed -i '/^$/d' hosts5.txt
# Removing all commented lines
sed -i '/^#/d' hosts5.txt
# Add an empty line at the end
sed -i -e '$a\' hosts5.txt

wget -tries=3 -O hosts6.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardDNS.txt
# Removing empty lines
sed -i '/^$/d' hosts6.txt
# Removing all commented lines
sed -i '/^#/d' hosts6.txt
# Add an empty line at the end
sed -i -e '$a\' hosts6.txt

wget -tries=3 -O hosts7.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardMobileAds.txt
# Removing empty lines
sed -i '/^$/d' hosts7.txt
# Removing all commented lines
sed -i '/^#/d' hosts7.txt
# Add an empty line at the end
sed -i -e '$a\' hosts7.txt

wget -tries=3 -O hosts8.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardMobileSpyware.txt
# Removing empty lines
sed -i '/^$/d' hosts8.txt
# Removing all commented lines
sed -i '/^#/d' hosts8.txt
# Add an empty line at the end
sed -i -e '$a\' hosts8.txt

wget -tries=3 -O hosts9.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/AdguardTracking.txt
# Removing empty lines
sed -i '/^$/d' hosts9.txt
# Removing all commented lines
sed -i '/^#/d' hosts9.txt
# Add an empty line at the end
sed -i -e '$a\' hosts9.txt

wget -tries=3 -O hosts10.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/EasyPrivacy3rdParty.txt
# Removing empty lines
sed -i '/^$/d' hosts10.txt
# Removing all commented lines
sed -i '/^#/d' hosts10.txt
# Add an empty line at the end
sed -i -e '$a\' hosts10.txt

wget -tries=3 -O hosts11.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/EasyPrivacyCNAME.txt
# Removing empty lines
sed -i '/^$/d' hosts11.txt
# Removing all commented lines
sed -i '/^#/d' hosts11.txt
# Add an empty line at the end
sed -i -e '$a\' hosts11.txt

wget -tries=3 -O hosts12.txt https://raw.githubusercontent.com/r-a-y/mobile-hosts/refs/heads/master/EasyPrivacySpecific.txt
# Removing empty lines
sed -i '/^$/d' hosts12.txt
# Removing all commented lines
sed -i '/^#/d' hosts12.txt
# Add an empty line at the end
sed -i -e '$a\' hosts12.txt

wget -tries=3 -O hosts13.txt https://raw.githubusercontent.com/sjhgvr/oisd/refs/heads/main/domainswild2_big.txt
# Removing empty lines
sed -i '/^$/d' hosts13.txt
# Removing all commented lines
sed -i '/^#/d' hosts13.txt
# Adding 0.0.0.0 to each line
sed -i -e 's/^/0.0.0.0 /' hosts13.txt
# Add an empty line at the end
sed -i -e '$a\' hosts13.txt

wget -tries=3 -O hosts14.txt https://raw.githubusercontent.com/sjhgvr/oisd/refs/heads/main/domainswild2_nsfw.txt
# Removing empty lines
sed -i '/^$/d' hosts14.txt
# Removing all commented lines
sed -i '/^#/d' hosts14.txt
# Adding 0.0.0.0 to each line
sed -i -e 's/^/0.0.0.0 /' hosts14.txt
# Add an empty line at the end
sed -i -e '$a\' hosts14.txt

# Merging all hosts text files into one file
cat hosts1.txt hosts2.txt hosts3.txt hosts4.txt hosts5.txt hosts6.txt hosts7.txt hosts8.txt hosts9.txt hosts10.txt hosts11.txt hosts12.txt hosts13.txt hosts14.txt > myhosts.txt
# Removing unneeded hosts files
rm -f hosts1.txt hosts2.txt hosts3.txt hosts4.txt hosts5.txt hosts6.txt hosts7.txt hosts8.txt hosts9.txt hosts10.txt hosts11.txt hosts12.txt hosts13.txt hosts14.txt
# Remove all empty lines
sed -i '/^$/d' myhosts.txt
# Removing duplicate lines
awk '!seen[$0]++' myhosts.txt > myhosts
# Removing unneeded myhosts.txt file
rm -f myhosts.txt
# Add an empty line at the end
sed -i -e '$a\' myhosts
# Add first necessary lines
sed -i '1 i\0.0.0.0 0.0.0.0' myhosts
sed -i '1 i\255.255.255.255 broadcasthost' myhosts
sed -i '1 i\127.0.0.1 localhost' myhosts
# Replacing existing hosts file

mv /tmp/myhosts /etc/hosts
