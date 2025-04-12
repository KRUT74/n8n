#!/bin/bash

# Print current directory
echo "Current directory:"
pwd

# Print Node.js version and path
echo "Node.js version and path:"
which node
node --version

# Print environment
echo "Environment variables:"
env | grep NODE

# Start n8n with explicit node path
cd packages/cli && /opt/render/project/src/node_modules/.bin/node bin/n8n 