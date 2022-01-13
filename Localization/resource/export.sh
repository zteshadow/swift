#!/usr/bin/env bash

set -euo pipefail

# get sdk by `xcodebuild -showsdks`
# xcodebuild -workspace Localization.xcworkspace -scheme "Localization" -sdk iphonesimulator15.2 > /dev/null 2>&1
# xcodebuild -workspace Localization.xcworkspace -scheme "Localization" -arch arm64
# xcodebuild -exportLocalizations -localizationPath "export" -workspace Localization.xcworkspace -exportLanguage en
#ARCHS=x86_64 ONLY_ACTIVE_ARCH=NO

xcrun xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" \
  -configuration Debug

xcrun xcodebuild \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" \
  -configuration Debug \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en
