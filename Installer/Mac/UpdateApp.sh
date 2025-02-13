#!/bin/bash
# Copy executable
cp /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build/Mine-imator Mine-imator.app/Contents/MacOS/Mine-imator

# Find OpenMP
install_name_tool -change /opt/homebrew/Cellar/libomp/19.1.7/lib/libomp.dylib @executable_path/../Frameworks/libomp.dylib Mine-imator.app/Contents/MacOS/Mine-imator

# Sign application with developer certificate
codesign --deep --options=runtime -fs XNJP8V2LJ4 Mine-imator.app
codesign --verify --deep --verbose Mine-imator.app

# Generate DMG and notarize
"/Applications/DMG Canvas.app/Contents/Resources/dmgcanvas" Mine-imator.dmgcanvas Mine-imator.dmg
spctl -a -t open --context context:primary-signature -v Mine-imator.dmg
