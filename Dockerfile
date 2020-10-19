FROM tomcat:8.0.20-jre8
RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="password" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
COPY target/onlinebookstore-0.0.1.war /usr/local/tomcat/webapps/onlinebookstore-0.0.1.war
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
