#!/bin/bash
export INSTALL_DIR=$PWD/install

# install things for the prefix
./winetricks dotnet48
./winetricks arial calibri
./winetricks dxvk

# set prefix as window10
./winetricks win10
