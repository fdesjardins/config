#!/usr/bin/env bash

sudo apt install -y libopenbabel-dev libeigen3-dev libqt4-dev

mkdir /tmp/install-avogadro
cd /tmp/install-avogadro

wget https://downloads.sourceforge.net/project/avogadro/avogadro/1.2.0/avogadro-1.2.0.tar.gz
tar xvf avogadro-1.2.0.tar.gz

cd avogadro-1.2.0
mkdir build
cd build
cmake ..
make -j 4
sudo make install
