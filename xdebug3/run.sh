#! /bin/sh
sed -i s/deb.debian.org/mirrors.cloud.tencent.com/g /etc/apt/sources.list
sed -i s/security.debian.org/mirrors.cloud.tencent.com/g /etc/apt/sources.list
apt update
export DEBIAN_FRONTEND=noninteractive
apt install -y tzdata zlib1g-dev libzip-dev libwebp-dev libjpeg-dev libpng-dev libfreetype6-dev
ln -fs /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
dpkg-reconfigure -f noninteractive tzdata
docker-php-ext-install mysqli zip gd
pecl install /xdebug-3.1.5.tgz 