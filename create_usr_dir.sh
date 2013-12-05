#!/bin/bash

while true; do if [ -d /Users/cltbld/b2g_build/build-dir/build/out/host/darwin-x86/ ] && [ ! -d /Users/cltbld/b2g_build/build-dir/build/out/host/darwin-x86/usr ]; then echo "Copying directory /Users/cltbld/b2g_build/usr to /Users/cltbld/b2g_build/build-dir/build/out/host/darwin-x86/usr"; cp -pr /Users/cltbld/b2g_build/usr /Users/cltbld/b2g_build/build-dir/build/out/host/darwin-x86/; break; fi; sleep 3; done
