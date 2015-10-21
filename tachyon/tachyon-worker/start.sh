#!/bin/bash

rm /tmp/*.pid

/usr/bin/supervisord -n -c /etc/supervisord.conf &
echo "${TACHYON_MASTER_SERVICE_HOST} tachyon-master" >> /etc/hosts
/home/kmdm/tachyon-0.7.1/bin/tachyon-start.sh worker Mount
if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
