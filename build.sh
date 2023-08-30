#!/bin/sh
set -uex pipefail

apk update && apk upgrade

for apkPackage in $(yq '.apk[]' < /tmp/packages.yml); do
  apk add --update --no-cache "$apkPackage"
done

for cpanPackage in $(yq '.cpan[]' < /tmp/packages.yml); do
  cpan -I "$cpanPackage"
done

curl -LJ https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o /tmp/uplink_linux_amd64.zip
unzip /tmp/uplink_linux_amd64.zip -d /usr/local/bin/
chmod 755 /usr/local/bin/uplink
#while read -r line; do
#  apk add --update --no-cache $(yq '.apk[]')
#done <packages.yml
