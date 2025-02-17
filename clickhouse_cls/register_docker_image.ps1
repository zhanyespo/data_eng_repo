#!/bin/bash

# Variables
IMAGE_NAME="grafana"
TAG="latest"
LOCAL_REGISTRY="localhost:5000"

# Step 1: Tag the Image
echo "Tagging image..."
docker tag $IMAGE_NAME:$TAG $LOCAL_REGISTRY/$IMAGE_NAME:$TAG

# Step 2: Ensure the Local Registry is Running
echo "Checking if local registry is running..."
if ! docker ps | grep -q "$LOCAL_REGISTRY"; then
  echo "Starting local registry..."
  docker run -d -p 5000:5000 --name registry registry:2
fi

# Step 3: Push the Image
echo "Pushing image to local registry..."
docker push $LOCAL_REGISTRY/$IMAGE_NAME:$TAG

# Step 4: Verify Registration
echo "Checking registered images..."
curl -X GET http://$LOCAL_REGISTRY/v2/_catalog

echo "Image registration completed!"
