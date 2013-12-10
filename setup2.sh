#!/bin/bash -xve
cd "$(dirname "${0}")"
[ ! -d Cellar2 ] && cp -pr Cellar Cellar2
[ ! -d /usr/local/Cellar ] && sudo mv Cellar2 /usr/local/Cellar

sudo rm -f '/usr/local/bin/git'

./all_links.sh

sudo ln -f -s 'gtar' '/usr/local/bin/tar'
sudo ln -f -s 'python2.7' '/usr/local/bin/python'

cat buildprops.json  | sed 's/slavename": ".*/slavename": "'"$(hostname -s)"'",/' > xxx
mv xxx buildprops.json

rm -rf ~/.ssh
scp -r bld-lion-r5-085:.ssh ~
