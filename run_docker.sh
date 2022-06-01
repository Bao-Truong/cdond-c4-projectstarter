#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag app:latest .
# Build image and add a descriptive tag

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -it -p 8000:80 app:latest
