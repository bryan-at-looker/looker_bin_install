The commands below gets a running Looker instance on https://\<your host or static ip\>:9999 without a DNS or an SSL certificate. Looker runs through port 9999, make sure to allow inbound network traffic.

# Commands to run on Ubuntu 16
```
wget https://raw.githubusercontent.com/bryan-at-looker/looker_bin_install/rearrange/amazon-linux/amazon-linux-1.sh -O looker_bin_install_pt1
chmod 755 looker_bin_install_pt1
./looker_bin_install_pt1
```
Follow prompts while running.<br/>
Once complete, run these commands
```
wget https://raw.githubusercontent.com/bryan-at-looker/looker_bin_install/rearrange/amazon-linux/amazon-linux-2.sh -O looker_bin_install_pt2
chmod 755 looker_bin_install_pt2
./looker_bin_install_pt2
```
Looker should be starting up on port 9999.