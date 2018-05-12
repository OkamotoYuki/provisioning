#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
cd osx-provisioning
HOMEBREW_CASK_OPTS="--appdir=~/Applications" ansible-playbook -i hosts exec.yml --ask-become-pass
