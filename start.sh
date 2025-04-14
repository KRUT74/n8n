#!/bin/bash

# Print current directory and environment info
echo "Current directory: $(pwd)"
echo "Node version: $(node --version)"
echo "Node path: $(which node)"

# Install dependencies
pnpm install

# Load environment variables from .env.production file
if [ -f .env.production ]; then
  echo "Loading environment variables from .env.production file"
  export $(grep -v '^#' .env.production | xargs)
fi

# Print environment variables for debugging
echo "Environment variables:"
env | grep N8N

# Start n8n directly
cd packages/cli && NODE_ENV=production node bin/n8n 