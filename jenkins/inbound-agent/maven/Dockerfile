# 1. 以官方的 inbound-agent为基础镜像，
FROM jenkins/inbound-agent:3301.v4363ddcca_4e7-3

ENV MAVEN_VERSION=3.9.9 \
    MAVEN_HOME=/usr/share/maven \
    PATH=${MAVEN_HOME}/bin:${PATH} \
    JDK_VERSION=8u452-b09 \
    JAVA_HOME=/opt/jdk${OPENJDK_VERSION}

ADD apache-maven-${MAVEN_VERSION}-bin.tar.gz .
ADD OpenJDK8U-jdk_x64_linux_hotspot_8u452b09.tar.gz .

RUN mv apache-maven-${MAVEN_VERSION} $MAVEN_HOME && \
    mv jdk${JDK_VERSION} ${JAVA_HOME}
