#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
PORT=8000
# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="956722820961.dkr.ecr.us-east-2.amazonaws.com/udacity-container-ml:$TAG_VERSION"

# Step 2
kubectl apply -f deployment/k8s/app_pod.yml
# Run the Docker Hub container with kubernetes


# Step 3:
kubectl get pod
# List kubernetes pods

# Step 4:
# kubectl apply -f deployment/k8s/app_service.yml
# kubectl port-forward deployment/app $PORT
kubectl port-forward pod/app $PORT
# Forward the container port to a host

