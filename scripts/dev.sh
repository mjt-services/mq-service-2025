#!/usr/bin/env bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source the .env file
if [ -f "${SCRIPT_DIR}/../.env" ]; then
  export $(grep -v '^#' "${SCRIPT_DIR}/../.env" | xargs)
fi

ENV_FILE="${SCRIPT_DIR}/../.env"

docker run -it --rm \
  --name "${NAME}" \
  --env-file "${ENV_FILE}" \
  --entrypoint /bin/bash  "${IMAGE_TAG}"