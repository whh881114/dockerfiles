#!/bin/bash

registry_url="harbor.idc.roywong.work"
registry_project="library"
image="$registry_url"/"$registry_project"/jenkins/inbound-agent-docker-cli:28.1.1

docker build -t $image .
docker push $image