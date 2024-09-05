#!/bin/sh

# Update the /etc/config/network file with the desired configuration
cat <<EOL > /etc/config/network
config interface 'loopback'
    option device 'lo'
    option proto 'static'
    option ipaddr '127.0.0.1'
    option netmask '255.0.0.0'

config globals 'globals'
    option ula_prefix 'fd8c:64ae:80b8::/48'

config device
    option name 'br-lan'
    option type 'bridge'
    list ports 'eth0'

config interface 'lan'
    option device 'eth0'
    option proto 'static'
    option ipaddr '192.168.31.100'
    option netmask '255.255.255.0'
    option gateway '192.168.31.1'
    option dns '192.168.31.1'
EOL

exec /sbin/init


