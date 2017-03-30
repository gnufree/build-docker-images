FROM jenkins-slave-dind:v1
MAINTAINER zhiwenjun <wenjun.zhi@kanche.com>

RUN apk add --no-cache openjdk8-jre nodejs && \
    npm install -g npm --registry=https://registry.npm.taobao.org

ENV JOME_HOME /usr/lib/jvm/java-1.8-openjdk/jre

WORKDIR /home/jenkins

CMD ["/usr/sbin/sshd", "-D"]
