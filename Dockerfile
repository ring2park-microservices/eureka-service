FROM openjdk:8-jre-alpine

ARG imageVersion=1.0
ARG javaOpts=
ARG eurekaHost=localhost
ARG eurekaPort=1111

ENV JAVA_OPTS=$javaOpts
ENV EUREKA_HOST=$eurekaHost
ENV EUREKA_PORT=$eurekaPort

ADD target/registration-service-${imageVersion}.jar app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar --eurekaHost=$EUREKA_HOST --eurekaPort=$EUREKA_PORT" ]
