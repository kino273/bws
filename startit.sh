#!/bin/bash

if [ ! -f /etc/machine-id ]; then
  dbus-uuidgen > /etc/machine-id
fi

groupmod -g $gid worker
usermod -u $uid -g $gid worker

chown -R worker:worker /home/worker/

echo display $DISPLAY
su -c "/usr/bin/firefox -profile /home/worker/.mozilla/firefox $ARGS $URL" worker &
su -c "/usr/bin/google-chrome $ARGS $URL" worker

#tail -f /etc/hosts
