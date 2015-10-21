FROM       kongming/jdk:1.8
MAINTAINER wenjun <zhiwenjun@kongming-inc.com>

ADD aliyun-mirror.repo /etc/yum.repos.d/CentOS-Base.repo
ADD aliyun-epel.repo /etc/yum.repos.d/epel.repo

RUN yum -y install python-devel openssh-server openssh-clients && \
	yum install -y --enablerepo=epel pwgen python-pip && \
	yum clean all && \
	ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && \
	ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
	ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N "" && \
	ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -N "" && \
	ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
	cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

RUN pip install supervisor

ADD supervisord.conf /etc/supervisord.conf
ADD ssh_config /root/.ssh/config

RUN mkdir -p /etc/supervisor.conf.d && \
    mkdir -p /var/log/supervisor
ADD supervisor_sshd.conf /etc/supervisor.conf.d/supervisor_sshd.conf

EXPOSE 22

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
