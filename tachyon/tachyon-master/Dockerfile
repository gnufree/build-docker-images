FROM       kongming/tachyon-base:v2
MAINTAINER wenjun <zhiwenjun001@163.com>

ENV TACHYON_PREFIX /home/kmdm/tachyon-0.7.1
ADD tachyon /home/kmdm/tachyon-0.7.1/bin/tachyon
ADD start.sh /start.sh
EXPOSE 19998 19999


ENTRYPOINT ["/start.sh","-d"]
