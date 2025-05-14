#!/bin/bash

registry="harbor.idc.roywong.work"
repository="library"
image="$registry/$repository/argocd-cmp-jsonnet:1.0"

docker build -t $image .
docker push $image