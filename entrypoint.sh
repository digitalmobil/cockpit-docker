#!/bin/bash 

if [ ! -d $COCKPIT_ROOT ]; then
    mkdir -p $COCKPIT_ROOT
fi

if test ! -f $COCKPIT_ROOT/COCKPIT_VERSION || test "x$(cat $COCKPIT_ROOT/COCKPIT_VERSION)" != "x$COCKPIT_VERSION"; then
    tar -C $COCKPIT_ROOT -xf /usr/src/cockpit.tar.gz --strip-components 1 
    echo "$COCKPIT_VERSION" > $COCKPIT_ROOT/COCKPIT_VERSION
fi

chown -R www-data:www-data $COCKPIT_ROOT

exec "$@"

