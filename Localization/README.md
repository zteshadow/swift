# Localization

## 1. 添加字符串

## 2. 添加多语言支持
添加字符串文件, 默认名称`Localizable.strings`
## 3. 导出localization

### 3.1 导出

可以导出workspace中各个project的localization, 也可以导出全部, 菜单入口: Product/Export Localizations/, 指令:
```bash
xcrun xcodebuild \
  -workspace "Localization.xcworkspace" \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en \
  -exportLanguage de \
  ...
```
### 3.2 可能的错误

导出localization通常都会报莫名其妙的错误, 菜单导出的报错如下图:

<div align=center><img src="./resource/error.png" width="80%" height="80%" alt="Product/Export Localizations"/></div>

命令行错误如图:

```bash
xcodebuild: error: Unable to build project for localization string extraction
	Reason: Failed to build.
	Please see the build logs for failure description.
```

Xcode(13.2.1)的exportLocalizations有3个问题:
- 无法处理依赖关系
- 默认依赖`arm64`架构, 目前不知道如何设置, 解决的方法是手动编译时指定`ARCHS=arm64`
- 默认`Release`模式, 同样不知道如何设置, 可以编译的时候指定`-configuration Release`

### 3.3 Fix
解决的方案是手动编译一遍, 在编译时指定架构`archs=arm64`, 指定模式`-configuration Release`

[script](./resource/export.sh):

```bash
#!/usr/bin/env bash

set -euo pipefail

xcrun xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO -configuration Release \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" > /dev/null 2>&1

xcrun xcodebuild -configuration Release \
  -quiet \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en
```

### 3.4 导出的目录

Localized Contents: 自动提取的字符串 + 内置的`Localizable.strings`

Source Contents: 内置的`Localizable.strings`

# 4. 参考

[官方文档](https://developer.apple.com/documentation/xcode/exporting-localizations)

[WWDC2021](https://developer.apple.com/videos/play/wwdc2021/10220/)