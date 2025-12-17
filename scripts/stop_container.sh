#!/bin/bash
set -e
# Use -q to avoid awk; check if any containers exist before trying to rm
containerid=$(docker ps -q)
if [ -n "$containerid" ]; then
  docker rm -f $containerid
else
  echo "No containers to stop."
fi
