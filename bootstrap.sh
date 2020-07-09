#!/bin/bash

set -ex

# Build the image with tag
docker build . -t gcr.io/infra-cicd-279015/secret-pull-app:0.0.1

# Push the image to the google cloud docker registry
docker push gcr.io/infra-cicd-279015/secret-pull-app:0.0.1

# Applying K8S manifest 
kubectl apply -f ./manifests/secret-pull-app.yaml


