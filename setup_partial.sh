#!/bin/bash -exv
cd "$(dirname "${0}")"
ln -s gcc-4.6 /usr/local/bin/gcc

ls -l /usr/local/bin/git
rm -f /usr/local/bin/git
ls -ld /usr/local/lib/perl5/site_perl
sudo chown -R cltbld:admin /usr/local/lib/perl5/site_perl
brew install git
# Alternative git installation method:
# git clone https://github.com/gitster/git
# cd git
# git checkout v1.8.4.4
# make configure
# ./configure
# make
# sudo 'make install'
# git --version

# ls -l /usr/local/bin/python2.7
# rm -f /usr/local/bin/python2.7
# brew install python
brew install gnu-tar
ln -s gtar /usr/local/bin/tar
ln -s python2.7 /usr/local/bin/python

#rm -rf ~/.ssh
#scp -r bld-lion-r5-086:.ssh ~
echo "Completed"
