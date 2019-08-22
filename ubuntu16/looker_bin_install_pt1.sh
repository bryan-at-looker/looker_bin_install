#!/bin/bash
#
# get java

sudo apt-get update
sudo apt-get install openjdk-8-jre -y
sudo apt-get install jq -y
sudo apt-get update

java -version

# Add System File Lines

sudo cat <<EOT >> tmp.txt
#
# Looker Settings
net.ipv4.tcp_keepalive_time=200
net.ipv4.tcp_keepalive_intvl=200
net.ipv4.tcp_keepalive_probes=5
EOT

sudo sh -c 'cat tmp.txt >> /etc/sysctl.conf'
rm tmp.txt

sudo cat <<EOT >> tmp.txt
#
# Looker Settings
looker     soft     nofile     4096
looker     hard     nofile     4096
EOT

sudo sh -c 'cat tmp.txt >> /etc/security/limits.conf'
rm tmp.txt

# time synchronization
sudo apt-get install ntp -y
sudo ntpq -p

# Install Chrome Browser (chromium) for v5.20 or later
sudo apt-get install fonts-freefont-otf -y
sudo apt-get update && sudo apt-get install -y chromium-browser
alias chromium='chromium-browser'
sudo ln -s /usr/bin/chromium-browser /usr/bin/chromium


# create looker user and sudo as them
sudo groupadd looker
sudo useradd -m  -g looker  looker
sudo su - looker
