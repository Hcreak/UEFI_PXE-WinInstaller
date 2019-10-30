#! /bin/bash

IP=$(ip a | grep inet | grep -v 127.0.0.1 | grep -v 172.17.0.1 | grep -v inet6 | awk '{print $2}' | cut -d "/" -f1)
# sed -i "s/targetIP/$IP/" startnet.cmd
sed -i "s/^.*SERVER.*$/set SERVER=$IP/" ../boot/startnet.cmd
sed -i "s/^.*dhcp-range.*$/dhcp-range=$IP,proxy/" dnsmasq.conf