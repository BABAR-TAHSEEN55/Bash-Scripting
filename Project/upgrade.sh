#!/usr/bin/bash

if command -v nala &>/dev/null; then
  echo "Using nala to update & upgrade"
  sudo nala update && sudo nala upgrade
else
  echo "Using apt to update & upgrade"
  sudo apt update && sudo apt upgrade
fi
