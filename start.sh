#!/bin/bash

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Use the correct Node.js version
nvm use 20.11.1

# Print Node.js version for verification
echo "Node.js version:"
node --version

# Start n8n
cd packages/cli && node bin/n8n 