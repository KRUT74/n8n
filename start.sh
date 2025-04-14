#!/bin/bash

# Print current directory and environment info
echo "Current directory: $(pwd)"
echo "Node version: $(node --version)"
echo "Node path: $(which node)"

# Copy the config file to the correct location
cp n8n.config.js packages/cli/

# Print environment variables for debugging
echo "Environment variables:"
env | grep N8N

# Start n8n with the config file
cd packages/cli && NODE_ENV=production node bin/n8n --config n8n.config.js 