#!/bin/bash

# Clone repos
git clone https://gitlab.winehq.org/wine/wine.git source
git clone https://github.com/bluesillybeard/Paint.NETOnWine.git patchs

# apply path & configure
cd source
../apply-patchs

cd ..
./configure

# make the project
./makeinstall-all

# create prefix
./createprefix.sh


