#!/usr/bin/env bash
set -euo pipefail

REGISTRY=harbor.idc.roywong.work

DOCKER_IMAGES_FILE=${1:?Usage: $0 <images-file>}
[[ -r $DOCKER_IMAGES_FILE ]] || { echo "Error: cannot read '$DOCKER_IMAGES_FILE'" >&2; exit 1; }

while IFS= read -r line || [[ -n "$line" ]]; do
  # 去掉前后空格
  line_trimmed=$(echo "$line" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
  # 跳过空行或注释
  [[ -z "$line_trimmed" || "$line_trimmed" == \#* ]] && continue
  echo "docker tag $line_trimmed ${REGISTRY}/${line_trimmed}"
  echo "docker push ${REGISTRY}/${line_trimmed}"
done < "$DOCKER_IMAGES_FILE"
