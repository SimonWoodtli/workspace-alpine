#!/bin/sh

set -uex pipefail

apk update && apk upgrade

apkPackages=( $(yq '.apk[]' < /tmp/packages.yml) )
for apkPackage in "${apkPackages[@]}"; do
  apk add --update --no-cache "$apkPackage"
done

cpanPackages=( $(yq '.cpan[]' < /tmp/packages.yml) )
for cpanPackage in "${cpanPackages[@]}"; do
   cpan -I "$cpanPackage"
done

curl -LJ https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o /tmp/uplink_linux_amd64.zip
unzip /tmp/uplink_linux_amd64.zip -d /usr/local/bin/
chmod 755 /usr/local/bin/uplink
