FROM jenkins/inbound-agent:3301.v4363ddcca_4e7-3

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN rm -f /etc/apt/sources.list.d/*.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian bookworm main contrib non-free\n\
deb https://mirrors.tuna.tsinghua.edu.cn/debian bookworm-updates main contrib non-free\n\
deb https://mirrors.tuna.tsinghua.edu.cn/debian bookworm-backports main contrib non-free\n\
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bookworm-security main contrib non-free" \
    > /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl gnupg lsb-release && \
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

RUN echo \
  "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] \
   https://download.docker.com/linux/debian \
   $(lsb_release -cs) stable" \
   > /etc/apt/sources.list.d/docker.list

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends docker-ce-cli=5:28.1.1-1~debian.12~bookworm && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
