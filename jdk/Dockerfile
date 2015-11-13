FROM       centos:centos7.1.1503
MAINTAINER wenjun <zhiwenjun001@163.com>

ENV TZ "Asia/Shanghai"
ENV TERM xterm

RUN yum install -y curl wget tar hostname && \
	yum clean all && \
	wget http://myhost.com/jdk-8u60-linux-x64.tar.gz && \
	tar zxf jdk-8u60-linux-x64.tar.gz && \
	rm jdk-8u60-linux-x64.tar.gz && \
	mv jdk1.8.0_60 /usr/local/ 
ENV JAVA_HOME /usr/local/jdk1.8.0_60
ENV PATH $JAVA_HOME/bin:$PATH
