#!/bin/bash

set -uex pipefail

apk update && apk upgrade

declare -i apkCount=$(yq '.apk[]' < /tmp/packages.yml | wc -l)
declare -a apkPackages=( $(yq '.apk[]' < /tmp/packages.yml) )
apk add --update --no-cache ${aptPackages[@]}

declare -i cpanCount=$(yq '.cpan[]' < /tmp/packages.yml | wc -l)
declare -a cpanPackages=( $(yq '.cpan[]' < /tmp/packages.yml) )
cpan -I ${cpanPackages[@]}

curl -LJ https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o /tmp/uplink_linux_amd64.zip
unzip /tmp/uplink_linux_amd64.zip -d /usr/local/bin/
chmod 755 /usr/local/bin/uplink
