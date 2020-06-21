#!/usr/bin/env sh

REPO=seanauff
IMAGE=octoprint-klipper
TAG=arm

# Build & push latest
docker build -t ${REPO}/${IMAGE}:${TAG} --compress --push ../