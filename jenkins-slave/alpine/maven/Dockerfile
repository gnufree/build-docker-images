FROM jenkins-slave-dind-java:v1

MAINTAINER  zhiwenjun <wenjun.zhi@kanche.com>

RUN curl -fsSl http://mirrors.hust.edu.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz |tar -zxC /usr/share/ \
    && mv /usr/share/apache-maven-3.3.9 /usr/share/maven \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven

COPY settings.xml ${MAVEN_HOME}/conf/settings.xml

VOLUME /home/jenkins

CMD ["/usr/sbin/sshd", "-D"]
