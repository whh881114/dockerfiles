# 1. 以官方的 inbound-agent为基础镜像，
FROM jenkins/inbound-agent:latest-jdk8

USER root

ENV MAVEN_VERSION=3.9.9 \
    MAVEN_HOME=/usr/share/maven

ENV PATH=${MAVEN_HOME}/bin:${PATH}

ADD apache-maven-${MAVEN_VERSION}-bin.tar.gz .

RUN mv apache-maven-${MAVEN_VERSION} ${MAVEN_HOME}

USER jenkins