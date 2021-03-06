#!/usr/bin/env bash

set -x

COMMAND="make -C docs html"

. ./containthedocs-image

exec docker run --rm -it \
  -v "$PWD":"$PWD" --workdir "$PWD" \
  ${DOCKER_RUN_ARGS} \
  -e "LOCAL_USER_ID=1000" \
  ${DOC_IMG} ${COMMAND}
