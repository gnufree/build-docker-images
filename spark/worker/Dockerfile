FROM kongming/spark-base:v1

ADD start.sh /
ADD log4j.properties /home/kmdm/spark-1.5.0/conf/log4j.properties

EXPOSE 8080
ENTRYPOINT ["/start.sh"]
