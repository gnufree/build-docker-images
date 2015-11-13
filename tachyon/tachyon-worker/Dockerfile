FROM       kongming/tachyon-base:v2
MAINTAINER wenjun <zhiwenjun001@163.com>

ADD start.sh /start.sh
EXPOSE 29998 29999

VOLUME ["/data/tachyon"]

ENTRYPOINT ["/start.sh","-d"]
