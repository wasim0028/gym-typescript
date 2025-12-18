#!/bin/bash
set -e

CONTAINER_NAME="gym-typescript"

# Force stop and remove the container if it exists
if [ "$(docker ps -aq -f name=^/${CONTAINER_NAME}$)" ]; then
    echo "Removing conflicting container: ${CONTAINER_NAME}"
    docker rm -f ${CONTAINER_NAME}
fi
