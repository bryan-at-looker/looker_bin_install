#!/bin/bash
#

# OpenJDK 1.8
sudo yum install java-1.8.0-openjdk -y
java --version

# libssl
sudo yum install -y openssl-devel

# Add System File Lines
sudo /bin/su -c "echo 'net.ipv4.tcp_keepalive_time=200' >> /etc/sysctl.conf"
sudo /bin/su -c "echo 'net.ipv4.tcp_keepalive_intvl=200' >> /etc/sysctl.conf"
sudo /bin/su -c "echo 'net.ipv4.tcp_keepalive_probes=5' >> /etc/sysctl.conf"

sudo /bin/su -c "echo 'looker     soft     nofile     4096' >> /etc/security/limits.conf"
sudo /bin/su -c "echo 'looker     hard     nofile     4096' >> /etc/security/limits.conf"

#install chromium
sudo amazon-linux-extras install epel -y
sudo yum install chromium -y
sudo ln -s /usr/bin/chromium-browser /usr/bin/chromium



#for downloading Looker JAR
sudo yum install jq -y


sudo groupadd looker
sudo useradd -m  -g looker  looker
sudo su - looker