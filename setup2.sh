#!/bin/bash -xve
cd "$(dirname "${0}")"
rm -rf Cellar2
cp -pr Cellar Cellar2
sudo rm -rf /usr/local/Cellar
sudo mv Cellar2 /usr/local/Cellar

./all_links.sh

sudo ln -f -s 'gtar' '/usr/local/bin/tar'
sudo ln -f -s 'python2.7' '/usr/local/bin/python'
sudo ln -f -s 'gcc-4.6' '/usr/local/bin/gcc'
sudo ln -f -s 'gcc-4.6' '/usr/local/bin/c++'
sudo ln -f -s 'gcc-4.6' '/usr/local/bin/g++'

cat buildprops.json  | sed 's/slavename": ".*/slavename": "'"$(hostname -s)"'",/' > xxx
mv xxx buildprops.json

rm -rf ~/.ssh
scp -r bld-lion-r5-092:.ssh ~
