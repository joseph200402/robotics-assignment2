#!/bin/bash
# This script sets up the project directory structure and permissions.

echo "Starting project setup..."

# Step 1: Create the directory structure
echo "Creating directories..."
mkdir -p workspace/{docs,logs,data,scripts}

# Step 2: Create initial files
echo "Creating initial files..."
touch workspace/docs/README.md
touch workspace/logs/.gitkeep
touch workspace/data/input.csv
touch workspace/scripts/setup.sh

# Step 3: Add introductory content to README
echo "Project Documentation" > workspace/docs/README.md

# Step 4: Set permissions
echo "Setting permissions..."
chmod 700 workspace/scripts/setup.sh
chmod 444 workspace/docs/README.md
chmod 777 workspace/logs
chmod 770 workspace/data

# Step 5: Change ownership (adjust 'student' and 'group' as necessary)
echo "Changing ownership..."
sudo chown $USER:$(id -gn) workspace/data

echo "Setup complete. Project is ready!"
