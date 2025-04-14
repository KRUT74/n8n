#!/bin/bash

# Print current directory and environment info
echo "Current directory: $(pwd)"
echo "Node version: $(node --version)"
echo "Node path: $(which node)"

# Set explicit webhook URLs and configuration
export N8N_HOST="0.0.0.0"
export N8N_PROTOCOL="https"
export N8N_PORT="3000"
export N8N_WEBHOOK_URL="https://n8n-krut74.onrender.com"
export N8N_WEBHOOK_TEST_URL="https://n8n-krut74.onrender.com"
export WEBHOOK_TUNNEL_URL="https://n8n-krut74.onrender.com"
export N8N_EDITOR_BASE_URL="https://n8n-krut74.onrender.com"
export N8N_PATH="/"
export N8N_PUBLIC_API_DISABLED="false"
export N8N_WEBHOOK_DEBUG="true"

# Print environment variables for debugging
echo "Environment variables:"
echo "N8N_HOST: $N8N_HOST"
echo "N8N_PROTOCOL: $N8N_PROTOCOL"
echo "N8N_PORT: $N8N_PORT"
echo "N8N_WEBHOOK_URL: $N8N_WEBHOOK_URL"
echo "N8N_WEBHOOK_TEST_URL: $N8N_WEBHOOK_TEST_URL"
echo "WEBHOOK_TUNNEL_URL: $WEBHOOK_TUNNEL_URL"
echo "N8N_EDITOR_BASE_URL: $N8N_EDITOR_BASE_URL"
echo "N8N_PATH: $N8N_PATH"
echo "N8N_PUBLIC_API_DISABLED: $N8N_PUBLIC_API_DISABLED"
echo "N8N_WEBHOOK_DEBUG: $N8N_WEBHOOK_DEBUG"

# Start n8n with explicit node path
cd packages/cli && NODE_ENV=production node bin/n8n 