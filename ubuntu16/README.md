The commands below gets a running Looker instance on https://\<your host or static ip\>:9999 without a DNS or an SSL certificate. Looker runs through port 9999, make sure to allow inbound network traffic.

# Commands to run on Ubuntu 16
```
wget https://raw.githubusercontent.com/bryan-at-looker/looker_bin_install/rearrange/amazon-linux/amazon-linux-1.sh -O looker_bin_install_pt1.sh
chmod 755 looker_bin_install_pt1.sh
./looker_bin_install_pt1.sh
```
Follow prompts while running.<br/>

Go here, enter your email, license key and accept the EULA: https://download.looker.com/validate

Once complete, run these commands

```
export LOOKERLICENSE=YOURLICENSEKEY1234
export EMAIL=youremail@yourcompany.com

wget https://raw.githubusercontent.com/bryan-at-looker/looker_bin_install/rearrange/amazon-linux/amazon-linux-2.sh -O looker_bin_install_pt2.sh
chmod 755 looker_bin_install_pt2.sh
./looker_bin_install_pt2.sh
```
Looker should be starting up on port 9999.

