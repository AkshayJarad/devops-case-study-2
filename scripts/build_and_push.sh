#!/usr/bin/env bash
set -euo pipefail

GIT_COMMIT=$(git rev-parse --short HEAD)

IMAGE="akshayjarad/myapp:$GIT_COMMIT"

echo "[INFO] Building Docker image: $IMAGE"
docker build -t $IMAGE .

echo "[INFO] Logging in to DockerHub..."
docker login

echo "[INFO] Pushing image to DockerHub..."
docker push $IMAGE
