#!/bin/bash

registry="harbor.idc.roywong.work"
repository="library"
image="$registry/$repository/rockylinux:9.4"

docker build -t $image .
docker push $image