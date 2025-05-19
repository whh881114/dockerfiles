#!/bin/bash

registry="harbor.idc.roywong.work"
repository="public"
image="$registry/$repository/argocd-cmp-helm:v2.12.1-2025-05-14-v1.3"

docker build -t $image .
docker push $image