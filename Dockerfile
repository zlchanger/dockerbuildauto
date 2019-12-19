FROM gradle:5.6.0-jdk8 AS build

MAINTAINER bugu

#在容器内复制Java源代码
COPY --chown=gradle:gradle . /home/gradle/src

WORKDIR /home/gradle/src

RUN gradle build --no-daemon

FROM openjdk:8-jre-alpine

RUN mkdir -p /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/dockerbuildauto.jar

ENV JVM_OPTIONS="" \
    JAR_NAME="/app/dockerbuildauto.jar"

EXPOSE 8888

CMD java -Djava.security.egd=file:/dev/./urandom $JVM_OPTIONS -jar $JAR_NAME