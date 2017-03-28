FROM jenkins-slave-dind:v1

MAINTAINER  zhiwenjun <wenjun.zhi@kanche.com>

RUN apk add --no-cache openjdk8-jre
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre

CMD ["/usr/sbin/sshd", "-D"]
