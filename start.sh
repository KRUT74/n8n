#!/bin/bash

# Print current directory and environment info
echo "Current directory: $(pwd)"
echo "Node version: $(node --version)"
echo "Node path: $(which node)"

# Install dependencies
npm install

# Start the proxy server and n8n
npm run dev:n8n 