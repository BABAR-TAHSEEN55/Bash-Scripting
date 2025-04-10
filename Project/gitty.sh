#!/usr/bin/bash

AssignVisibilityName() {
  read -p "Enter your Project name: " projectName
  read -p "Make this GitHub repository public? (y/n): " visibility
  if [ "$visibility" = "y" ]; then
    response="public"
  else
    response="private"
  fi
}

response="" # Variable Declaration

# Main Body
if command -v gh &>/dev/null; then
  if [ -d .git ]; then
    echo "[✔] Git repository detected."
    AssignVisibilityName
    gh repo create "$projectName" --"$response" --source=. --remote=origin --push
  else
    echo " ❌ No Git repository found. Initializing..."
    echo " ⚡ Running git init..."
    git init
    AssignVisibilityName
    gh repo create "$projectName" --"$response" --source=. --remote=origin --push
  fi
else
  echo " ❌ You need to install GitHub CLI first."
fi
