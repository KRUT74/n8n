#!/bin/bash

# Print current directory and environment info
echo "Current directory: $(pwd)"
echo "Node version: $(node --version)"
echo "Node path: $(which node)"

# Apply the patch
git apply webhook.patch || echo "Patch already applied or failed"

# Set Render environment variable
export RENDER=true

# Print environment variables for debugging
echo "Environment variables:"
env | grep N8N
echo "RENDER: $RENDER"

# Start n8n
cd packages/cli && NODE_ENV=production node bin/n8n 