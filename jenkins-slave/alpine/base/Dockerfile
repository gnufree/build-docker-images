FROM alpine:3.4

MAINTAINER  zhiwenjun <wenjun.zhi@kanche.com>

ENV LANG C.UTF-8

RUN sed -i 's/http:\/\/dl-cdn.alpinelinux.org/https:\/\/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update openssh curl bash tzdata sudo git \
    && rm  -rf /tmp/* /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' \
    && ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N '' \
    && ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' \
    && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''

RUN addgroup -g 1000 jenkins && adduser -u 1000 -G jenkins -s /bin/sh -D jenkins \
    && echo "jenkins:jenkins" | chpasswd \
    && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
   
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
