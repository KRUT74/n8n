#!/bin/bash

# Print current directory and environment info
echo "Current directory: $(pwd)"
echo "Node version: $(node --version)"
echo "Node path: $(which node)"

# Install dependencies
pnpm install

# Start n8n directly
cd packages/cli && NODE_ENV=production node bin/n8n 