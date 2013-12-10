#!/bin/bash -xve

sudo mkdir -p /usr/local/share/man/man7; sudo chown root:admin /usr/local/share/man/man7
sudo mkdir -p /usr/local/share/man/man1; sudo chown root:admin /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/locale/zh_TW/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/zh_TW/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/zh_CN/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/zh_CN/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/uk/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/uk/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/tr/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/tr/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/sv/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/sv/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/sk/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/sk/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/ru/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/ru/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/ro/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/ro/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/pt_BR/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/pt_BR/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/pt/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/pt/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/pl/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/pl/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/nl/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/nl/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/nb/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/nb/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/ja/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/ja/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/it/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/it/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/id/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/id/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/hu/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/hu/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/gl/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/gl/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/fr/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/fr/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/fi/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/fi/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/et/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/et/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/es/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/es/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/eo/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/eo/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/en@quot/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/en@quot/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/en@boldquot/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/en@boldquot/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/el/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/el/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/de/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/de/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/da/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/da/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/cs/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/cs/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/ca/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/ca/LC_MESSAGES
sudo mkdir -p /usr/local/share/locale/be/LC_MESSAGES; sudo chown cltbld:admin /usr/local/share/locale/be/LC_MESSAGES
sudo mkdir -p /usr/local/share/doc; sudo chown root:admin /usr/local/share/doc
sudo mkdir -p /usr/local/share/aclocal; sudo chown cltbld:admin /usr/local/share/aclocal
sudo mkdir -p /usr/local/share; sudo chown root:admin /usr/local/share
sudo mkdir -p /usr/local/lib; sudo chown root:admin /usr/local/lib
sudo mkdir -p /usr/local/include; sudo chown root:admin /usr/local/include
sudo mkdir -p /usr/local/bin; sudo chown root:admin /usr/local/bin

sudo ln -f -s '../Cellar/cmake/2.8.12.1/bin/ccmake' '/usr/local/bin/ccmake'
sudo ln -f -s '../Cellar/cmake/2.8.12.1/bin/cmake' '/usr/local/bin/cmake'
sudo ln -f -s '../Cellar/cmake/2.8.12.1/bin/cmakexbuild' '/usr/local/bin/cmakexbuild'
sudo ln -f -s '../Cellar/cmake/2.8.12.1/bin/cpack' '/usr/local/bin/cpack'
sudo ln -f -s '../Cellar/gcc-4.6/4.6.3/bin/cpp-4.6' '/usr/local/bin/cpp-4.6'
sudo ln -f -s '../Cellar/cmake/2.8.12.1/bin/ctest' '/usr/local/bin/ctest'
sudo ln -f -s '../Cellar/gcc-4.6/4.6.3/bin/gcc-4.6' '/usr/local/bin/gcc-4.6'
sudo ln -f -s '../Cellar/gcc-4.6/4.6.3/bin/gcov-4.6' '/usr/local/bin/gcov-4.6'
sudo ln -f -s '../Cellar/gnupg/1.4.15/bin/gpg' '/usr/local/bin/gpg'
sudo ln -f -s '../Cellar/gnupg/1.4.15/bin/gpg-zip' '/usr/local/bin/gpg-zip'
sudo ln -f -s '../Cellar/gnupg/1.4.15/bin/gpgsplit' '/usr/local/bin/gpgsplit'
sudo ln -f -s '../Cellar/gnupg/1.4.15/bin/gpgv' '/usr/local/bin/gpgv'
sudo ln -f -s '../Cellar/gcc-4.6/4.6.3/bin/x86_64-apple-darwin11.2.0-gcc-4.6' '/usr/local/bin/x86_64-apple-darwin11.2.0-gcc-4.6'
sudo ln -f -s '../Cellar/gcc-4.6/4.6.3/bin/x86_64-apple-darwin11.2.0-gcc-4.6.3' '/usr/local/bin/x86_64-apple-darwin11.2.0-gcc-4.6.3'
sudo ln -f -s '../Cellar/gmp/5.1.3/include/gmp.h' '/usr/local/include/gmp.h'
sudo ln -f -s '../Cellar/gmp/5.1.3/include/gmpxx.h' '/usr/local/include/gmpxx.h'
sudo ln -f -s '../Cellar/libmpc/1.0.1/include/mpc.h' '/usr/local/include/mpc.h'
sudo ln -f -s '../Cellar/mpfr/3.1.2/include/mpf2mpfr.h' '/usr/local/include/mpf2mpfr.h'
sudo ln -f -s '../Cellar/mpfr/3.1.2/include/mpfr.h' '/usr/local/include/mpfr.h'
sudo ln -f -s '../Cellar/gmp/5.1.3/lib/libgmp.10.dylib' '/usr/local/lib/libgmp.10.dylib'
sudo ln -f -s '../Cellar/gmp/5.1.3/lib/libgmp.a' '/usr/local/lib/libgmp.a'
sudo ln -f -s '../Cellar/gmp/5.1.3/lib/libgmp.dylib' '/usr/local/lib/libgmp.dylib'
sudo ln -f -s '../Cellar/gmp/5.1.3/lib/libgmpxx.4.dylib' '/usr/local/lib/libgmpxx.4.dylib'
sudo ln -f -s '../Cellar/gmp/5.1.3/lib/libgmpxx.a' '/usr/local/lib/libgmpxx.a'
sudo ln -f -s '../Cellar/gmp/5.1.3/lib/libgmpxx.dylib' '/usr/local/lib/libgmpxx.dylib'
sudo ln -f -s '../Cellar/libmpc/1.0.1/lib/libmpc.3.dylib' '/usr/local/lib/libmpc.3.dylib'
sudo ln -f -s '../Cellar/libmpc/1.0.1/lib/libmpc.a' '/usr/local/lib/libmpc.a'
sudo ln -f -s '../Cellar/libmpc/1.0.1/lib/libmpc.dylib' '/usr/local/lib/libmpc.dylib'
sudo ln -f -s '../Cellar/mpfr/3.1.2/lib/libmpfr.4.dylib' '/usr/local/lib/libmpfr.4.dylib'
sudo ln -f -s '../Cellar/mpfr/3.1.2/lib/libmpfr.a' '/usr/local/lib/libmpfr.a'
sudo ln -f -s '../Cellar/mpfr/3.1.2/lib/libmpfr.dylib' '/usr/local/lib/libmpfr.dylib'
sudo ln -f -s '../../Cellar/cmake/2.8.12.1/share/aclocal/cmake.m4' '/usr/local/share/aclocal/cmake.m4'
sudo ln -f -s '../Cellar/cmake/2.8.12.1/share/cmake' '/usr/local/share/cmake'
sudo ln -f -s '../../Cellar/cmake/2.8.12.1/share/doc/cmake' '/usr/local/share/doc/cmake'
sudo ln -f -s '../../Cellar/mpfr/3.1.2/share/doc/mpfr' '/usr/local/share/doc/mpfr'
sudo ln -f -s '../Cellar/gnupg/1.4.15/share/gnupg' '/usr/local/share/gnupg'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/be/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/be/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/ca/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/ca/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/cs/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/cs/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/da/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/da/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/de/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/de/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/el/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/el/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/en@boldquot/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/en@boldquot/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/en@quot/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/en@quot/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/eo/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/eo/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/es/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/es/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/et/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/et/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/fi/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/fi/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/fr/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/fr/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/gl/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/gl/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/hu/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/hu/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/id/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/id/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/it/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/it/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/ja/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/ja/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/nb/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/nb/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/nl/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/nl/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/pl/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/pl/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/pt/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/pt/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/pt_BR/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/pt_BR/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/ro/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/ro/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/ru/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/ru/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/sk/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/sk/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/sv/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/sv/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/tr/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/tr/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/uk/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/uk/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/zh_CN/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/zh_CN/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../../Cellar/gnupg/1.4.15/share/locale/zh_TW/LC_MESSAGES/gnupg.mo' '/usr/local/share/locale/zh_TW/LC_MESSAGES/gnupg.mo'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/ccmake.1' '/usr/local/share/man/man1/ccmake.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmake.1' '/usr/local/share/man/man1/cmake.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmakecommands.1' '/usr/local/share/man/man1/cmakecommands.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmakecompat.1' '/usr/local/share/man/man1/cmakecompat.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmakemodules.1' '/usr/local/share/man/man1/cmakemodules.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmakepolicies.1' '/usr/local/share/man/man1/cmakepolicies.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmakeprops.1' '/usr/local/share/man/man1/cmakeprops.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cmakevars.1' '/usr/local/share/man/man1/cmakevars.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/cpack.1' '/usr/local/share/man/man1/cpack.1'
sudo ln -f -s '../../../Cellar/gcc-4.6/4.6.3/share/man/man1/cpp-4.6.1' '/usr/local/share/man/man1/cpp-4.6.1'
sudo ln -f -s '../../../Cellar/cmake/2.8.12.1/share/man/man1/ctest.1' '/usr/local/share/man/man1/ctest.1'
sudo ln -f -s '../../../Cellar/gcc-4.6/4.6.3/share/man/man1/gcc-4.6.1' '/usr/local/share/man/man1/gcc-4.6.1'
sudo ln -f -s '../../../Cellar/gcc-4.6/4.6.3/share/man/man1/gcov-4.6.1' '/usr/local/share/man/man1/gcov-4.6.1'
sudo ln -f -s '../../../Cellar/gnupg/1.4.15/share/man/man1/gpg-zip.1' '/usr/local/share/man/man1/gpg-zip.1'
sudo ln -f -s '../../../Cellar/gnupg/1.4.15/share/man/man1/gpg.1' '/usr/local/share/man/man1/gpg.1'
sudo ln -f -s '../../../Cellar/gnupg/1.4.15/share/man/man1/gpg.ru.1' '/usr/local/share/man/man1/gpg.ru.1'
sudo ln -f -s '../../../Cellar/gnupg/1.4.15/share/man/man1/gpgv.1' '/usr/local/share/man/man1/gpgv.1'
sudo ln -f -s '../../../Cellar/gcc-4.6/4.6.3/share/man/man7/fsf-funding.7' '/usr/local/share/man/man7/fsf-funding.7'
sudo ln -f -s '../../../Cellar/gcc-4.6/4.6.3/share/man/man7/gfdl.7' '/usr/local/share/man/man7/gfdl.7'
sudo ln -f -s '../../../Cellar/gnupg/1.4.15/share/man/man7/gnupg.7' '/usr/local/share/man/man7/gnupg.7'
sudo ln -f -s '../../../Cellar/gcc-4.6/4.6.3/share/man/man7/gpl.7' '/usr/local/share/man/man7/gpl.7'
