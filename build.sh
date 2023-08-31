#!/bin/sh
set -uex pipefail
apk update && apk upgrade --no-cache

for apkPackage in $(yq '.apk[]' < /tmp/packages.yml); do
  apk add --update --no-cache "$apkPackage"
done
for cpanPackage in $(yq '.cpan[]' < /tmp/packages.yml); do
  cpan -I "$cpanPackage"
done
curl -LJ https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o /tmp/uplink_linux_amd64.zip
unzip /tmp/uplink_linux_amd64.zip -d /usr/local/bin/
chmod 755 /usr/local/bin/uplink
# make bash default shell for root and symlink to /usr
usermod --shell /bin/bash root
ln -s /bin/bash /usr/bin/bash
ln -s /bin/cat /usr/bin/cat
