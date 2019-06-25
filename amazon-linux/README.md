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

# Notes

**PART 1**

url: https://raw.githubusercontent.com/bryan-at-looker/looker_bin_install/master/looker_bin_install_pt1 <br/>
short_link: https://git.io/vAwOs

**PART 2**

url: https://raw.githubusercontent.com/bryan-at-looker/looker_bin_install/master/looker_bin_install_pt2 <br/>
short_link: https://git.io/vAwOI

# From a fresh virtual machine

Last tested: 2017-02-20<br/>
Last tested on: Azure / Google Cloud<br/>
Last tested OS: Ubuntu 16.04<br/>
Last tested by: Bryan Weber<br/>
