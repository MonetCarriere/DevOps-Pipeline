#!/bin/bash

# Step 1: Update the package manager (Homebrew)
echo "Updating Homebrew..."
brew update

# Step 2: Check if Java is installed
if ! java -version &>/dev/null; then
    echo "Java is not installed. Installing Java..."
    brew install openjdk
else
    echo "Java is already installed."
fi

# Step 3: Download Jenkins keys
echo "Downloading Jenkins keys..."
brew tap jenkinsci/jenkins

# Step 4: Install Jenkins
echo "Installing Jenkins..."
brew install jenkins-lts

# Step 5: Start Jenkins
echo "Starting Jenkins..."
brew services start jenkins-lts

echo "Jenkins installation and startup complete."


