#!/bin/bash

groupmod -g $gid worker
usermod -u $uid -g $gid worker

chown -R worker:worker /home/worker/

echo display $DISPLAY
su -c "/usr/bin/firefox -profile /home/worker/.mozilla/firefox $ARGS $URL" worker

tail -f /etc/hosts
