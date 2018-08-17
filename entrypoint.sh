#!/bin/sh

qemu-system-x86_64 -nographic -net nic,vlan=0 -net user -m 512 -hda /app/tc.img < /dev/null &


cd /opt/wetty && node /opt/wetty/app.js -p $PORT
