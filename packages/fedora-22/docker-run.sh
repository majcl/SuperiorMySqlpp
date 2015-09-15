#!/bin/sh
set -e

cp -r /dbuild/sources /dbuild/building
cd /dbuild/building
make -j clean

make -j package-fedora-22-build-install-dependencies

make -j package-fedora-22-build
chmod 644 packages/fedora-22/*.rpm
cp packages/fedora-22/*.rpm /dbuild/sources/packages/fedora-22/
