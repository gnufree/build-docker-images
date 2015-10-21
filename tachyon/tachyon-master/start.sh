#!/bin/bash

rm /tmp/*.pid
/usr/bin/supervisord -n -c /etc/supervisord.conf &
sed -i s/tachyon-master/$HOSTNAME/  /home/kmdm/tachyon-0.7.1/conf/tachyon-env.sh
/home/kmdm/tachyon-0.7.1/bin/tachyon format
/home/kmdm/tachyon-0.7.1/bin/tachyon-start.sh master
if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
