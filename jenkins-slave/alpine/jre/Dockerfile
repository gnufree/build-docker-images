FROM jenkins-slave-dind:v1

MAINTAINER  zhiwenjun <wenjun.zhi@kanche.com>

RUN apk add --no-cache openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

CMD ["/usr/sbin/sshd", "-D"]
