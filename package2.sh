#!/bin/csh

set path = ($path /usr/local/bin)

cd /
pkg install -y git
pkg install -y argtable
pkg install -y autoconf
pkg install -y automake
pkg install -y libtool
pkg install -y ffmpeg

echo y | pkg set -o devel/pkg-config:devel/pkgconf
echo y | pkg install -f devel/pkgconf

setenv CC clang

/usr/local/bin/git clone https://github.com/erikkaashoek/Comskip
fetch https://raw.githubusercontent.com/pawhite/Commercialcut/master/post3.sh
chmod +x /post3.sh

cd /Comskip
./autogen.sh
./configure
make install

fetch https://raw.githubusercontent.com/pawhite/Commercialcut/master/comskip.ini






