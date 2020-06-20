#Dockerfile
FROM tomcat:9.0.35-jdk8-openjdk
LABEL maintainer="tomornw@mitrphol.com"

COPY . /usr/local/tomcat/webapps/

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080
CMD ["catalina.sh", "run"]