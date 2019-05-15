#!/bin/bash

# atom editor
curl -fsSL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

sudo apt update

# atom packages
atom_packages=(
  "atom-ternjs"
  "autocomplete"
  "autocomplete-paths"
  "autocomplete-modules"
  "editorconfig"
  "file-icons"
  "indent-guide-improved"
  "nord-atom-syntax"
  "language-docker"
  "language-nginx"
  "language-babel"
  "language-pgsql"
  "linter"
  "linter-eslint"
  "markdown-preview-plus"
  "markdown-toc"
  "minimap"
  "node-requirer"
)

apm install "${atom_packages[@]}"
