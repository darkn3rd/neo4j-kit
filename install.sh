#!/bin/sh
# Install Script
#  Joaquin Menchaca 2017
#
# Install Script for Installing Vagrant, Virtualbox, Ansible

install_homebrew() {
  BREWRL='https://raw.githubusercontent.com/Homebrew/install/master/install'
  /usr/bin/ruby -e "$(curl -fsSL ${BREWRL})"
}

install_brew_packages() {
  brew update
  brew tap Homebrew/bundle
  brew bundle --verbose
  brew linkapps python
}

install_ansible() {
  pip install --upgrade pip setuptools
  sudo -H pip install ansible
}

if [[ $(uname -s) == "Darwin" ]]; then
  command -v brew 2>&1 > /dev/null || { install homebrew ; }
  install_brew_packages
  install_ansible
fi
