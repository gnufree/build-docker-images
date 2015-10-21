FROM kongming/spark-base:v1

MAINTAINER wenjun <zhiwenjun@kongming-inc.com>

RUN cd /home/kmdm/spark-1.5.0 && \
	wget http://docker.kmtongji.com/package/v2/job-server.tar.gz && \
	tar zxf job-server.tar.gz && \
	rm job-server.tar.gz && \
	echo job-server installed in /home/kmdm/spark-1.5.0/job-server
	
ADD settings.sh /home/kmdm/spark-1.5.0/job-server/settings.sh
ADD demo.conf /home/kmdm/spark-1.5.0/job-server/demo.conf
ADD start.sh /
EXPOSE 8090

ENTRYPOINT ["/start.sh"]
