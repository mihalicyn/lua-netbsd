#!/usr/bin/env sh

cd ~/dev
./modload.sh

luactl create s1
#luactl require s1 systm
#luactl require s1 systm
luactl load s1 /root/dev/another_test.lua
luactl load s1 /root/dev/another_test.lua
#luactl require s1 systm
#luactl require s1 systm
#luactl load s1 /root/dev/another_test.lua
luactl destroy s1

cd ~/dev