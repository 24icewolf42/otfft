#!/bin/bash

BUILD_DIR=build

# cleanup
rm -rf $BUILD_DIR
mkdir $BUILD_DIR
cd $BUILD_DIR

# create makefile
cmake ..

# build
export OMP_NUM_THREADS=4
make -j4

# test
ctest