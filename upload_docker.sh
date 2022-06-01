#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="956722820961.dkr.ecr.us-east-2.amazonaws.com/udacity-container-ml:$TAG_VERSION"

# Step 2:  
# Authenticate & tag
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 956722820961.dkr.ecr.us-east-2.amazonaws.com
docker tag app:latest $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath
# Push image to a docker repository
