#!/usr/bin/env sh

REPO=seanauff
IMAGE=octoprint-klipper
TAG=arm

# Build & push latest
docker build -t ${REPO}/${IMAGE}:${TAG} --pull --no-cache --compress ../
docker push ${REPO}/${IMAGE}:${TAG}
