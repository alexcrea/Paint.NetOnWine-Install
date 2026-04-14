#!/bin/bash
cd build/64

make -j$(nproc)
make install

# 32 bit
cd ../32
make -j$(nproc)
make install

cd ..


