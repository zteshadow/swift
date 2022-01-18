#!/usr/bin/env bash

set -euo pipefail

# three problems exist in current export
# 1. can't process dependency, need build manually
# 2. need arm64 archs
# 3. in release mode

xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO -configuration Release \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" > /dev/null 2>&1

xcodebuild \
  -workspace "Localization.xcworkspace" \
  -importLocalizations \
  -localizationPath "export/zh-Hans.xcloc/Localized Contents/zh-Hans.xliff"
