ARG JDK_VER
FROM plantemateo/ubuntu24.04-jdk:$JDK_VER

LABEL maintainer="Plante Mateo"
ARG VER_P
ARG VER_S

ENV VERSION_P $VER_P
ENV VERSION_S $VER_S
ENV URL_DOWNLOAD_TOMCAT https://dlcdn.apache.org/tomcat/tomcat-${VERSION_P}/v${VERSION_P}.${VERSION_S}/bin/apache-tomcat-${VERSION_P}.${VERSION_S}.tar.gz

RUN apt update
RUN apt install wget unzip -y

RUN wget ${URL_DOWNLOAD_TOMCAT} -O /opt/tomcat.tar.gz

RUN tar -pxvzf /opt/tomcat.tar.gz -C /opt
RUN mv /opt/apache-tomcat-${VERSION_P}.${VERSION_S} /opt/tomcat
RUN chmod +x /opt/tomcat/bin/*.sh
RUN sed -i -e 's/\(exec ".*"\) start/\1 run/' /opt/tomcat/bin/startup.sh

RUN rm /opt/tomcat.tar.gz

VOLUME /opt/tomcat/bin/setenv.sh

EXPOSE 8080

ENTRYPOINT ["/opt/tomcat/bin/startup.sh"]
