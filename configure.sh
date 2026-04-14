#!/bin/bash
export WINEPREFIX="$PWD/prefix"

mkdir -p ./build/64
cd ./build/64

../../source/configure \
  --enable-win64 \
  --prefix=$INSTALL_DIR

# 32 bit configure
mkdir ../32
cd ../32

../../source/configure \
  --with-wine64=../64 \
  --prefix=$INSTALL_DIR

cd ../..


