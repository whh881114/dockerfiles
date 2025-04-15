FROM jenkins/inbound-agent:3301.v4363ddcca_4e7-3

USER root

# 安装 go 和常用工具
ENV GO_VERSION=1.24.2

RUN apt-get update && \
    apt-get -y install curl git bash && \
    curl -LO https://mirrors.aliyun.com/golang/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && \
    rm -f go${GO_VERSION}.linux-amd64.tar.gz

ENV GOROOT=/usr/local/go
ENV GOPATH=/home/jenkins/go
ENV PATH=$GOROOT/bin:$GOPATH/bin:$PATH

RUN mkdir -p $GOPATH && chown -R jenkins:jenkins $GOPATH

USER jenkins
