FROM       kongming/sshd:v2
MAINTAINER wenjun <zhiwenjun@kongming-inc.com>

RUN mkdir -p /home/kmdm && \
	mkdir -p /data/tachyon && \
	cd /home/kmdm && \
	curl -O http://docker.kmtongji.com/package/v2/tachyon-0.7.1-hadoop-2.7.1.tar.gz && \
	tar zxf tachyon-0.7.1-hadoop-2.7.1.tar.gz && \
	rm tachyon-0.7.1-hadoop-2.7.1.tar.gz && \
	echo installed tachyon-0.7.1 /home/kmdm/tachyon-0.7.1

ADD tachyon-env.sh /home/kmdm/tachyon-0.7.1/conf/tachyon-env.sh
