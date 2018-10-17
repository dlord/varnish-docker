#!/bin/bash
exec /usr/sbin/varnishd \
    -j unix,user=vcache \
    -F \
    -a 0.0.0.0:6081 \
    -T 0.0.0.0:6082 \
    -f /etc/varnish/default.vcl \
    -S /etc/varnish/secret \
    -s malloc,$VARNISH_MALLOC
