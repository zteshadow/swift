#!/usr/bin/env bash

set -euo pipefail

# three problems exist in current export
# 1. can't process dependency, need build manually
# 2. need arm64 archs
# 3. in release mode

xcrun xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO -configuration Release \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" > /dev/null 2>&1

xcrun xcodebuild -configuration Release \
  -quiet \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en
