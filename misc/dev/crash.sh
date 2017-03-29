#!/usr/bin/env sh

#modload lua
./modload.sh

cld_actions()
{
	luactl create s1
	#luactl require s1 systm
	luactl load s1 /root/dev/test.lua
	luactl destroy s1
}

for i in `seq 1 $1`
do
	cld_actions
done
