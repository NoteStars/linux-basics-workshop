#!/bin/bash

set -e

# Get the current user and group
CURRENT_USER=$(whoami)
CURRENT_GROUP=$(id -gn)

# Find the root directory of the repository
REPO_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

# Change repository ownership
sudo chown -R "$CURRENT_USER:$CURRENT_GROUP" "$REPO_DIR"

echo "Repository ownership updated!"
