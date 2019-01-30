FROM openjdk:8-jdk-alpine

RUN mkdir -p /apps && \
    mkdir -p /var/log/MyBlog && \
    groupadd -g 999 sekishii && \
    useradd -r -u 999 -g sekishii sekishii && \
    chown -R sekishii. /var/log/MyBlog

ENV SPRING_CONFIG_LOCATION classpath:/
ENV SPRING_PROFILE default
ENV JAVA_OPTS -Xmx1024m

ENV DD_SERVICE_NAME=MyBlog \
    DD_AGENT_HOST=localhost \
    DD_AGENT_PORT=8126 \
    AGENT_ENABLE=false

ARG JAR_FILE
ADD ${JAR_FILE} /apps/myblog.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.config.location=${SPRING_CONFIG_LOCATION}","-Dspring.profiles.active=${SPRING_PROFILE}","-jar","/myblog.jar"]