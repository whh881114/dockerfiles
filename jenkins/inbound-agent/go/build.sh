#!/bin/bash

registry_url="harbor.idc.roywong.work"
registry_project="library"
image="$registry_url"/"$registry_project"/jenkins/inbound-agent-go:1.24.2

docker build -t $image .
docker push $image