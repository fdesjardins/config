#!/bin/bash

packages=(
  "software-properties-common"
  "apt-transport-https"
  "ca-certificates"
  "curl"
  "wget"
  "git"
  "vim"
)

sudo apt update && sudo apt install -y "${packages[@]}"
