#!/bin/bash

DOCKERFILES_ROOT=$(realpath ./docker)
DOCKERFILE=${DOCKERFILES_ROOT}/Dockerfile_alpine
DOCKER_IMAGE_NAME=tor_socks_proxy

docker build -t $DOCKER_IMAGE_NAME -f ${DOCKERFILE} ${DOCKERFILES_ROOT}

