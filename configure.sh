#!/bin/bash
export INSTALL_DIR=$PWD/install

mkdir -p ./build/64
cd ./build/64

../../source/configure \
  --enable-win64 \
  --prefix=$INSTALL_DIR

