#!/bin/bash
IMAGE_PNG=dependency-graph.png
ROOT_DIR=$(git rev-parse --show-toplevel)

set -x
cd "${ROOT_DIR}"

if ! git diff --quiet "${IMAGE_PNG}"; then
  git add "${IMAGE_PNG}"
  git commit -m "dependency-graph: Updated by terraform graph [ci skip]"
  git push origin HEAD:${CIRCLE_BRANCH}
else
  echo "No changes for ${IMAGE_PNG}."
fi
