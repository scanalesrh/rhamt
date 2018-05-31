FROM openjdk:7
   
MAINTAINER scanales

RUN wget -P /tmp https://developers.redhat.com/download-manager/file/4.0.0/migrationtoolkit-rhamt-web-distribution-4.0.0.with-authentication.zip
RUN unzip -o /tmp/migrationtoolkit-rhamt-web-distribution-4.0.0.with-authentication.zip -d /opt

EXPOSE 8080

ENTRYPOINT /opt/rhamt-web-distribution-4.0.1.Final/run_rhamt.sh
