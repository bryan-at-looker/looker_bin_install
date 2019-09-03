#!/bin/bash
#

# check everything
java --version
chromium --version

# actions performed as looker user
mkdir ~/looker
cd ~/looker
pwd

# download looker startup scripts
curl -O https://raw.githubusercontent.com/looker/customer-scripts/master/startup_scripts/looker
chmod +x looker

# download looker jar
wget -O "looker-latest.jar" "$(curl -s -X POST -H 'Content-Type: application/json' -d "{\"lic\": \"${LOOKERLICENSE}\", \"email\": \"${EMAIL}\", \"latest\":\"latest\"}" "https://apidownload.looker.com/download" | jq .url -r)"
wget -O "looker-dependencies-latest.jar" "$(curl -s -X POST -H 'Content-Type: application/json' -d "{\"lic\": \"${LOOKERLICENSE}\", \"email\": \"${EMAIL}\", \"latest\":\"latest\"}" "https://apidownload.looker.com/download" | jq .depUrl -r)"
mv looker-latest.jar looker.jar
mv looker-dependencies-latest.jar looker-dependencies.jar


./looker start
