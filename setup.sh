#!/bin/bash

# Update the apt repositories
sudo apt update

# Navigate to the directory where the docker-compose.yml file is located
cd code/docker

# Start Docker services in detached mode (background)
docker compose up -d

# Print a separation or status message
echo "======================================================"
