#!/bin/bash
#

# check everything
# java --version
chromium --version

# actions performed as looker user
mkdir ~/looker
cd ~/looker
pwd

# download startup
curl -O https://raw.githubusercontent.com/looker/customer-scripts/master/startup_scripts/looker
chmod +x looker

#download jar
wget -O "looker-latest.jar" "$(curl -s -X POST -H 'Content-Type: application/json' -d '{"lic": "YOURLICENSEKEY", "email": "YOUREMAIL", "latest":"latest"}' "https://apidownload.looker.com/download" | jq .url -r)"
mv looker-latest.jar looker.jar

./looker start
