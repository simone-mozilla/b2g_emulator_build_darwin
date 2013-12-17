#!/bin/bash

while ! cd "$(dirname "${0}")/build-dir/build/sdk" 2>/dev/null || ! curl https://github.com/marshall/android-sdk/commit/d52cb5f1a47d98c5d961b9e3885072744522ec43.diff 2>/dev/null | patch -p1 -f >/dev/null 2>&1
do
    sleep 3
done
