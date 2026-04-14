#!/bin/bash

find ../patchs -name "*.patch" -type f | sort | while read -r p; do
  patch -p1 < "$p"
done
