#!/bin/bash

registry="harbor.idc.roywong.work"
repository="public"
image="$registry/$repository/argocd-cmp:v2.12.1-2025-05-22-v1.0"

docker build -t $image .
docker push $image