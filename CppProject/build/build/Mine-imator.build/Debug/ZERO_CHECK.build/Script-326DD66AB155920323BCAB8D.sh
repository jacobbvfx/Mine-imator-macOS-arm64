#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build
  make -f /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build
  make -f /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build
  make -f /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build
  make -f /Users/jacob/Documents/Dev/Mine-imator-macOS-arm64/CppProject/build/CMakeScripts/ReRunCMake.make
fi

