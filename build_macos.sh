#!/bin/bash

[ -d build ] || mkdir build

# regenerate icns if needed 
[ -d build/icon.iconset ] || mkdir build/icon.iconset
cp -a ./bin/icon_*.png ./build/icon.iconset/
iconutil -c icns -o './Misc/macBundleTemplate/SHADERed.app/Contents/Resources/icon.icns' ./build/icon.iconset

set -e

# compile
cd build
cmake ..
make -j8

# package the macOS app bundle
cd ..
[ -d "build/SHADERed.app" ] || cp -R Misc/macBundleTemplate/SHADERed.app build/bin
cp -a bin/ build/bin/SHADERed.app/Contents/MacOS
cp -a build/bin/SHADERed build/bin/SHADERed.app/Contents/MacOS