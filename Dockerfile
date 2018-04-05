FROM ubuntu:xenial
MAINTAINER Krishna
RUN apt-get -y install openjdk-6-jdk
RUN apt-get update
RUN apt-get -y install tomcat7
RUN mkdir -p /var/lib/tomcat7/webapps/  
ADD https://downloads.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.0.4.1/openmrs.war /var/lib/tomcat7/webapps/openmrs.war
RUN service tomcat7 restart
EXPOSE 8080
CMD ["bin/catalina.sh","run"]