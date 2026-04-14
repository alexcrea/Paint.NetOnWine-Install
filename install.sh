#!/bin/bash

# Clone repos
git clone https://gitlab.winehq.org/wine/wine.git source
git clone https://github.com/bluesillybeard/Paint.NETOnWine.git patchs

# apply path & configure
cd source
../apply-patchs.sh

cd ..
./configure.sh

# make the project
./makeinstall-all.sh

# create prefix
./createprefix.sh


