#!/bin/bash -xve

# Grab and unpack the tarball
mkdir ~/tmp && cd ~/tmp
curl -O http://opensource.apple.com/tarballs/gcc/gcc-5666.3.tar.gz
tar zxf gcc-5666.3.tar.gz
cd gcc-5666.3

# Setup some stuff it requires
mkdir -p build/obj build/dst build/sym
# And then build it. You should go make a cup of tea or five whilst this runs.
gnumake install RC_OS=macos RC_ARCHS='i386 x86_64' TARGETS='i386 x86_64' \
      SRCROOT=`pwd` OBJROOT=`pwd`/build/obj DSTROOT=`pwd`/build/dst SYMROOT=`pwd`/build/sym

# And finally install it
sudo ditto build/dst /
