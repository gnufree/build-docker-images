FROM       kongming/jdk:1.8
MAINTAINER wenjun <zhiwenjun@kongming-inc.com>

RUN mkdir -p /home/kmdm && \
	cd /home/kmdm && \
	wget http://docker.kmtongji.com/package/v2/spark-1.5.0.tar.gz && \
	tar zxf spark-1.5.0.tar.gz && \
	rm spark-1.5.0.tar.gz && \
	echo Spark installed in /home/kmdm

ADD log4j.properties /home/kmdm/spark-1.5.0/conf/log4j.properties
ADD setup_client.sh /
ENV PATH $PATH:/home/kmdm/spark-1.5.0/bin
