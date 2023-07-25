# Pull base image 
From tomcat:8-jre8 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
