#!/bin/bash

mkdir /run/kea
/usr/sbin/kea-dhcp4 -c /etc/kea/kea-dhcp.conf
