#!/bin/bash 
# Pull the latest image from your registry
docker pull wasimakram0028/gym-typescript:v1
# Run the new container
docker run -d --name gym-typescript -p 5173:5173 wasimakram0028/gym-typescript:v1
