#!/bin/sh

qemu-system-x86_64 -nographic -net nic,vlan=0 -net user -m 256 -hda /app/tc.img < /dev/null &


/usr/local/bin/gotty --port $PORT --permit-write --reconnect /bin/sh
