FROM jenkins-slave-dind-java:v1

ENV SBT_VERSION 0.13.11
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

# Install sbt
#RUN curl -fSl "https://akamai.bintray.com/a3/a36a6fbf6dd70afd93fb8db16c40e8ac00798fdddfa0b4c678786dc15617afa6?__gda__=exp=1490841181~hmac=6b0ea7043333e0ff9223318cb0ad31da455d925941b143aa3fd7ecb671011e6f&response-content-disposition=attachment%3Bfilename%3D%22sbt-0.13.11.tgz%22&response-content-type=application%2Foctet-stream&requestInfo=U2FsdGVkX18uE1QoJp_xLWu79dQoEo2hTE4UrJexiFExbELRdfq6IS3Kt2iqoS0B2yBxYn7CNFFBGDw3R28yazMZf5ByGzbZ9x78lozK8FQXsD4-vMa0zwde_J8E6-09" -o sbt-0.13.11.tgz \
COPY sbt-0.13.11.tgz /
RUN tar -xzvf sbt-0.13.11.tgz \
    && rm -rf sbt-0.13.11.tgz && \
    mv sbt /usr/local/ && \
    ln -s /usr/local/sbt/bin/sbt /usr/bin/sbt && \
    echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built

WORKDIR /home/jenkins

CMD ["/usr/sbin/sshd", "-D"]
