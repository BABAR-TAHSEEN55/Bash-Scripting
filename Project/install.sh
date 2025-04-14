#!/usr/bin/bash

#TODO : Installing depending on the OS required packages
# Learn about docker and run this in a docker image

sudo apt update && sudo apt upgrade
install_package() {
  local package=$1
  if ! command -v ${package} &>/dev/null; then
    echo "Installing ${package}"
    sudo apt install ${package}
  else
    echo "${package} is already installed"
    echo "skipping it ....."
  fi
}
install_package zsh
install_package kitty
install_package tmux
install_package stow
install_package neovim
