FROM tomcat:8.5-alpine

LABEL maintainer="EndpointApp"

USER root
ENV CATALINA_HOME /usr/local/tomcat

EXPOSE 8080

COPY ./netviz-edps-caeperf-app2.war $CATALINA_HOME/webapps/

CMD ["catalina.sh", "run"]

