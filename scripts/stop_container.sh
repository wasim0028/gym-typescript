#!/bin/bash

# 1. Define the container name
CONTAINER_NAME="gym-typescript"

# 2. Check if the container exists
if [ "$(docker ps -aq -f name=^/${CONTAINER_NAME}$)" ]; then
    echo "Found existing container: ${CONTAINER_NAME}. Stopping and removing..."
    
    # 3. Stop the container if it is running
    docker stop ${CONTAINER_NAME} || true
    
    # 4. Remove the container
    docker rm ${CONTAINER_NAME} || true
fi
