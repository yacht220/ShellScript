#!/bin/sh
# If there is no DEBUG file, which
# is created in S02bootmode (only if debug board with jumper present)
if [ ! -e /var/run/debug ]; then
    # If there is no '/mnt/flash/teds_app' file.
    if [ ! -x /mnt/flash/teds_app ]; then
        if [ -e /bin/teds_app ]; then
            /bin/teds_app
        fi
    else
        /mnt/flash/teds_app
    fi
fi
