#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=anhanh2212/machinelearningapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image="$dockerpath":1.0.0 --port 80 machinelearningapi

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/machinelearningapi --address 0.0.0.0 8000:80
