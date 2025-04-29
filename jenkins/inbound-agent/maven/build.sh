#!/bin/bash

registry_url="harbor.idc.roywong.work"
registry_project="library"

image="$registry_url"/"$registry_project"/jenkins/inbound-agent-maven:jdk8
docker build -t $image -f Dockerfile-jdk8 .
docker push $image

image="$registry_url"/"$registry_project"/jenkins/inbound-agent-maven:jdk11
docker build -t $image -f Dockerfile-jdk11 .
docker push $image

image="$registry_url"/"$registry_project"/jenkins/inbound-agent-maven:jdk17
docker build -t $image -f Dockerfile-jdk17 .
docker push $image

image="$registry_url"/"$registry_project"/jenkins/inbound-agent-maven:jdk21
docker build -t $image -f Dockerfile-jdk21 .
docker push $image
