#Dockerfile
FROM tomcat:9.0.35-jdk8-openjdk
LABEL maintainer="tomornw@mitrphol.com"

COPY . /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]