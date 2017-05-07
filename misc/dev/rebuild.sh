#!/usr/bin/env sh

set -e

cp /usr/src/sys/sys/lua.h /usr/include/sys/lua.h
cp /usr/src/external/mit/lua/dist/src/lua.h /usr/include/lua.h

#rebuild all
cd /usr/src/sbin/luactl
make clean
make USETOOLS=no
make install USETOOLS=no

cd /usr/src/sys/modules/lua
make clean
make USETOOLS=no
make install USETOOLS=no

cd /usr/src/sys/modules/luasystm
make clean
make USETOOLS=no
make install USETOOLS=no

cd /usr/src/sys/modules/luapmf
make clean
make USETOOLS=no
make install USETOOLS=no