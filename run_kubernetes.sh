yaraselim1994/microservicesatscaleproj4container#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=yaraselim1994/microservicesatscale

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run proj4\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=proj4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward proj4 8000:80
