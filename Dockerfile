
FROM tomcat:9-jdk8
ADD demo.war /usr/local/tomcat/webapps/ 
CMD ["catalina.sh", "run"] 