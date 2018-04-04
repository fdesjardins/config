#!/bin/bash

bash ./upgrade-kernel.sh

sudo apt update && sudo apt upgrade -y

# execute other install scripts
cd $(dirname -- "$(readlink -f -- "$BASH_SOURCE")")
bash ./install-node.sh
bash ./install-docker.sh
bash ./install-atom.sh
