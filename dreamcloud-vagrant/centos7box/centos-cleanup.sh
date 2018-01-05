#!/bin/sh

#  remove vbox guest source 
rm -rf /usr/src/vboxguest* 

# remove under tmp directory
rm -rf /tmp/*

# clean cache 
yum -y -q clean all
rm -rf /var/cache/yum

# defrag space 
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# clean history
cat /dev/null > ~/.bash_history && history -c