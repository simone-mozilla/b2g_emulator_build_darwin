#!/bin/bash -exv

# to reimage mac, run as root:
# /usr/sbin/bless --netboot --server bsdp://10.26.52.17; reboot

cd "$(dirname "${0}")"

# This will install Command Line Tools for Xcode on a fresh installation of OS X.
# DMG="$(dirname "${0}")/cltools_lion_latemarch12.dmg"
# hdiutil attach "$DMG"
# sudo installer -pkg '/Volumes/Command Line Tools/Command Line Tools.mpkg' -target /
# hdiutil detach "/Volumes/Command Line Tools"
# echo 'Finished install Command Line Tools for Xcode'

mkdir -p /Library/Caches/Homebrew
curl http://artfiles.org/gnupg.org/gnupg/gnupg-1.4.15.tar.bz2 -o /Library/Caches/Homebrew/gnupg-1.4.15.tar.bz2

./bootstrap-mac.sh
# sudo mkdir -p /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs
# sudo ln -s /Developer/SDKs/MacOSX10.6.sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/
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

rm -rf ~/.ssh
scp -r bld-lion-r5-086:.ssh ~
echo "Completed"
