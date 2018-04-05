FROM tomcat:8
ADD https://downloads.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.0.4.1/openmrs.war /usr/local/tomcat/webapps/openmrs.war
EXPOSE 8080
CMD ["bin/catalina.sh","run"]