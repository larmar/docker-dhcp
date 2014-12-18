#!/bin/bash

mkdir -p /data

if [ ! -f /data/dhcpd.conf ]; then
   NET=$(netmask -s `/sbin/ip -4 -o addr show dev eth0 | awk '{print $4}'`)
   NETWORK=$(echo $NET | cut -d/ -f1)
   NETMASK=$(echo $NET | cut -d/ -f2)
   cp /dhcpd.conf /data/dhcpd.conf
fi

if [ ! -f /data/dhcpd.leases ]; then
   touch /data/dhcpd.leases
fi
