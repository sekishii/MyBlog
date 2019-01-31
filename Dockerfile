FROM jenkins:latest

USER root
RUN curl -O https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz \
&& tar zxvf docker-latest.tgz \
&& cp docker/docker /usr/local/bin/ \
&& rm -rf docker docker-latest.tgz

ARG DOCKER_GID=999
USER jenkins:${DOCKER_GID}