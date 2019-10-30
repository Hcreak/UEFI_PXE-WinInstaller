#! /bin/bash

bash setIP.sh
lighttpd -f lighttpd.conf
dnsmasq -C dnsmasq.conf --log-facility=/var/log/dnsmasq.log
tail -f /var/log/dnsmasq.log /var/log/lighttpd/access.log