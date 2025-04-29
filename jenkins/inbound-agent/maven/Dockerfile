# 1. 以官方的 inbound-agent为基础镜像，
FROM jenkins/inbound-agent:3301.v4363ddcca_4e7-3

USER root

ENV MAVEN_VERSION=3.9.9 \
    MAVEN_HOME=/usr/share/maven \
    JDK_VERSION=8u452-b09 \
    ACTIVE_JDK8=/opt/active-jdk8.sh

ENV PATH=${MAVEN_HOME}/bin:${PATH}

ADD apache-maven-${MAVEN_VERSION}-bin.tar.gz .
ADD OpenJDK8U-jdk_x64_linux_hotspot_8u452b09.tar.gz .

RUN mv apache-maven-${MAVEN_VERSION} $MAVEN_HOME && \
    mv jdk${JDK_VERSION} /opt

RUN echo "export JAVA_HOME=/opt/jdk${JDK_VERSION}" > ${ACTIVE_JDK8} && \
    echo "export PATH=${JAVA_HOME}/bin:${PATH}" >> ${ACTIVE_JDK8} && \
    chmod 755 ${ACTIVE_JDK8}

USER jenkins