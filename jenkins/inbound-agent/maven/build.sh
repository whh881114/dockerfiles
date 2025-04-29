#!/bin/bash

registry_url="harbor.idc.roywong.work"
registry_project="library"
image="$registry_url"/"$registry_project"/jenkins/inbound-agent-maven:3.9.9

docker build -t $image .
docker push $image