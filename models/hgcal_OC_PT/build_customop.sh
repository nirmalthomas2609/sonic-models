#!/bin/bash

IMAGE=${USER}/hgcalml:21.06-ptpepr-py3

docker build -t ${IMAGE} -f Dockerfile.customop .

docker create --name hgcalml_artifacts ${IMAGE}

docker cp hgcalml_artifacts:/workspace/libtorchcmspepr.so .

docker rm -f hgcalml_artifacts
