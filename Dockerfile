#FROM gradle:5.6.0-jre8 as builder

#MAINTAINER bugu

#RUN mkdir -p /opt/app
#WORKDIR /opt/app

#COPY src .
#COPY build.gradle .
#打包
#RUN gradle clean shadowJar


FROM openjdk:8-jre-alpine

MAINTAINER bugu

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY /build/libs/dockerbuildauto-1.0.0-SNAPSHOT.jar /opt/app/dockerbuildauto.jar

ENV JVM_OPTIONS="" \
    JAR_NAME="dockerbuildauto.jar"

EXPOSE 8888

CMD java -Djava.security.egd=file:/dev/./urandom $JVM_OPTIONS -jar $JAR_NAME