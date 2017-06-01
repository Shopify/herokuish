#!/bin/bash
set -eux

: ${PIPA_IMAGE_FULL_NAME?Missing Pipa environment}

export IMAGE_NAME=$(echo $PIPA_IMAGE_FULL_NAME | cut -d':' -f1)
export BUILD_TAG=$(echo $PIPA_IMAGE_FULL_NAME | cut -d':' -f2)
make build-in-docker
