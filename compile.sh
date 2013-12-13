#!/bin/bash -exv
cd "$(dirname "${0}")"

### need this variable for config, see: https://hg.mozilla.org/build/mozharness/file/8ca3f8e6bce9/scripts/b2g_build.py#l172
export PROPERTIES_FILE="$(pwd)/buildprops.json"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
echo "GIT_DIR='${GIT_DIR}'"
unset GIT_DIR

hash -r

git --version
c++ --version
which g++
g++ --version
gcc --version
tar --version

rm -rf build-dir
rm -rf /builds/* || true
mkdir -p build-dir/build
cd build-dir
hg clone 'http://hg.mozilla.org/build/mozharness' scripts
cd scripts
hg update -C -r production
hg id -i
hg import --no-commit ../../fixes.patch
cd ..
mkdir -p /builds/git-shared/git
echo
echo
echo 'Now running the build part!!!!'
echo
echo
../apply_dev_patch.sh &
'scripts/scripts/b2g_build.py' '--target' 'generic' '--config' 'b2g/releng-emulator.py' '--b2g-config-dir' 'emulator' '--gaia-languages-file' 'locales/languages_dev.json' '--gecko-languages-file' 'gecko/b2g/locales/all-locales'
cat properties/*
