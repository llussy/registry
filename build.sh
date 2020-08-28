#!/bin/bash

set -e

# build bin file
export GO111MODULE=on
export GOPROXY=https://goproxy.io
make

# make my dir
mkdir -p $BUILD_ROOT/conf $BUILD_ROOT/bin
mv cmd/registry/registry $BUILD_ROOT/bin/.
cp etc/registry.sample.conf $BUILD_ROOT/conf/.
