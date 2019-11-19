FROM gradle:5.6.0-jre8 as builder

MAINTAINER bugu

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY src .
COPY build.gradle .
#打包
RUN gradle clean shadowJar


#FROM openjdk:8-jre-alpine
#
#MAINTAINER bugu
#
#RUN mkdir -p /opt/app
#WORKDIR /opt/app
#
#COPY --from=builder /opt/app/target/chenyang-0.0.1-SNAPSHOT.jar /opt/app/chenyang.jar
#
#ENV JVM_OPTIONS="" \
#    JAR_NAME="chenyang.jar"
#
#EXPOSE 8888
#
#CMD java -Djava.security.egd=file:/dev/./urandom $JVM_OPTIONS -jar $JAR_NAME