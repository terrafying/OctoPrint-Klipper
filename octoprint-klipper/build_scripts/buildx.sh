#!/usr/bin/env sh

REPO=seanauff
IMAGE=octoprint-klipper
PLATFORMS="linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64"

docker context use x86_64
export DOCKER_CLI_EXPERIMENTAL="enabled"
docker buildx use multiarch-builder

# Build & push latest
docker buildx build -t ${REPO}/${IMAGE}:latest --pull --no-cache --compress --push --platform "${PLATFORMS}" .
