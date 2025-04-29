# 1. 以官方的 inbound-agent为基础镜像，
FROM jenkins/inbound-agent:3301.v4363ddcca_4e7-3

USER root

ENV MAVEN_VERSION=3.9.9 \
    MAVEN_HOME=/usr/share/maven \
    JDK8_VERSION=8u452-b09 \
    JDK11_VERSION=-11.0.27+6 \
    JDK17_VERSION=-17.0.15+6 \
    JDK21_VERSION=-21.0.7+6

ENV PATH=${MAVEN_HOME}/bin:${PATH}

ADD *.tar.gz .
ADD active-jdk*.sh /opt

RUN mv apache-maven-${MAVEN_VERSION} $MAVEN_HOME && \
    mv jdk${JDK8_VERSION} /opt/jdk8 && \
    mv jdk${JDK11_VERSION} /opt/jdk11 && \
    mv jdk${JDK17_VERSION} /opt/jdk17 && \
    mv jdk${JDK21_VERSION} /opt/jdk21

USER jenkins