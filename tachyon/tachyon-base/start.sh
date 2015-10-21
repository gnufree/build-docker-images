#!/bin/bash
HADOOP_PROFIX=/usr/local/hadoop

rm /tmp/*.pid

# altering the core-site configuration
sed s/HOSTNAME/$HOSTNAME/ /usr/local/hadoop/etc/hadoop/core-site.xml.template > /usr/local/hadoop/etc/hadoop/core-site.xml

/usr/bin/supervisord -n -c /etc/supervisord.conf &
/usr/local/hadoop/sbin/start-dfs.sh
if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
