#!/bin/bash
export INSTALL_DIR=$PWD/install

# install things for the prefix
./winetricks arial calibri corefonts
./winetricks dxvk

# set prefix as window10
./winetricks win10
