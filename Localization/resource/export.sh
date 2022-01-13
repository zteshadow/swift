#!/usr/bin/env bash

set -euo pipefail

xcrun xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" > /dev/null 2>&1

xcrun xcodebuild \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en
