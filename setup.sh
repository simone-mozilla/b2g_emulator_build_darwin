#!/bin/bash -exv

# to reimage mac, run as root:
# /usr/sbin/bless --netboot --server bsdp://10.26.52.17; reboot

cd "$(dirname "${0}")"
{
    scp bld-lion-r5-092:cltools_lion_latemarch12.dmg .
    
    # This will install Command Line Tools for Xcode on a fresh installation of OS X.
    DMG="$(dirname "${0}")/cltools_lion_latemarch12.dmg"
    hdiutil attach "$DMG"
    sudo installer -pkg '/Volumes/Command Line Tools/Command Line Tools.mpkg' -target /
    hdiutil detach "/Volumes/Command Line Tools"
    echo 'Finished install Command Line Tools for Xcode'
    
    mkdir -p /Library/Caches/Homebrew
    curl http://artfiles.org/gnupg.org/gnupg/gnupg-1.4.15.tar.bz2 -o /Library/Caches/Homebrew/gnupg-1.4.15.tar.bz2
    
    ./bootstrap-mac.sh
    # (dry-run)=> mktemp /tmp/b2g-boostrap.XXXXX
    # (dry-run) => curl -fsSL https://raw.github.com/mxcl/homebrew/go/install -o /tmp/b2g-bootstrap.XXXXX
    # (dry-run) => ruby /tmp/b2g-bootstrap.XXXXX
    # sudo mkdir -p /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs
    # sudo ln -s /Developer/SDKs/MacOSX10.6.sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/
    
    # ==> This script will install:
    # /usr/local/bin/brew
    # /usr/local/Library/...
    # /usr/local/share/man/man1/brew.1
    # ==> The following directories will be made group writable:
    # /usr/local/.
    # /usr/local/bin
    # /usr/local/etc
    # /usr/local/include
    # /usr/local/lib
    # /usr/local/lib/pkgconfig
    # /usr/local/Library
    # /usr/local/sbin
    # /usr/local/share
    # /usr/local/var
    # /usr/local/var/log
    # /usr/local/share/man
    # /usr/local/share/man/man1
    # /usr/local/share/man/man3
    # /usr/local/share/man/man5
    # /usr/local/share/man/man7
    # /usr/local/share/info
    # /usr/local/share/doc
    # ==> The following directories will have their group set to admin:
    # /usr/local/.
    # /usr/local/bin
    # /usr/local/etc
    # /usr/local/include
    # /usr/local/lib
    # /usr/local/lib/pkgconfig
    # /usr/local/Library
    # /usr/local/sbin
    # /usr/local/share
    # /usr/local/var
    # /usr/local/var/log
    # /usr/local/share/man
    # /usr/local/share/man/man1
    # /usr/local/share/man/man3
    # /usr/local/share/man/man5
    # /usr/local/share/man/man7
    # /usr/local/share/info
    # /usr/local/share/doc
    # 
    # Press ENTER to continue or any other key to abort
    # ==> /usr/bin/sudo /bin/chmod g+rwx /usr/local/. /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/lib/pkgconfig /usr/local/Library /usr/local/sbin /usr/local/share /usr/local/var /usr/local/var/log /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man3 /usr/local/share/man/man5 /usr/local/share/man/man7 /usr/local/share/info /usr/local/share/doc
    # Password:
    # ==> /usr/bin/sudo /usr/bin/chgrp admin /usr/local/. /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/lib/pkgconfig /usr/local/Library /usr/local/sbin /usr/local/share /usr/local/var /usr/local/var/log /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man3 /usr/local/share/man/man5 /usr/local/share/man/man7 /usr/local/share/info /usr/local/share/doc
    # ==> Downloading and installing Homebrew...
    # remote: Counting objects: 141866, done.
    # remote: Compressing objects: 100% (49072/49072), done.
    # remote: Total 141866 (delta 96921), reused 136435 (delta 91737)
    # Receiving objects: 100% (141866/141866), 33.05 MiB | 6.30 MiB/s, done.
    # Resolving deltas: 100% (96921/96921), done.
    # From https://github.com/mxcl/homebrew
    #  * [new branch]      master     -> origin/master
    #  HEAD is now at fdf923e opus 1.1
    #  Warning: Install the "Command Line Tools for Xcode": https://developer.apple.com/downloads/
    #  ==> Installation successful!
    #  You should run `brew doctor' *before* you install anything.
    #  Now type: brew help
    
    
    # (dry-run) => /usr/local/bin/brew install gpg
    # (dry-run) => /usr/local/bin/brew install cmake
    # (dry-run) => /usr/local/bin/brew install https://raw.github.com/mozilla-b2g/B2G/master/scripts/homebrew/gcc-4.6.rb
    
    
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
    
    ls -l /usr/local/bin/python2.7
    rm -f /usr/local/bin/python2.7
    brew install python
    brew install gnu-tar
    ln -s gtar /usr/local/bin/tar
    ln -f -s python2.7 /usr/local/bin/python
    
    # for some reason, c++ was pointing to clang compiler
    # this will fix it
    echo "Before:"
    ls -l /usr/bin/*++
    sudo ln -f -s llvm-cpp-4.2 /usr/bin/c++
    echo "After:"
    ls -l /usr/bin/*++
    
    rm -rf ~/.ssh
    scp -r bld-lion-r5-004:.ssh ~
    
    cat buildprops.json  | sed 's/slavename": ".*/slavename": "'"$(hostname -s)"'",/' > xxx
    mv xxx buildprops.json
    echo "Completed"
} 2>&1 | tee "$(dirname "${0}")/setup_$(hostname)_$(date '+%Y-%m-%d_%H.%M.%S').log"
