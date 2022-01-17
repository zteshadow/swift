# Localization

## 0. 添加多语言支持的正确步骤
- 使用合适的字符串格式, 用SwiftUI或者UIKit构建界面
- 导出localization
- 导入xliff文件
- 添加多语言支持
- 整理添加可能的Plura字符串

后续只需要重复2 -5 步骤即可. 下面详细介绍每个步骤.

## 1. 添加字符串
> 1. UI中使用字符串

```swift
  VStack {
      Text("Hello from module1!", bundle: .main, comment: "Label: show hello from module1")
  }
```
> 2. ViewModule中使用字符串

```swift
var text1 = String(localized: "\(count) ticket(s)", bundle: .main, comment: "Label: quantities of tickets")
```
> 3. ViewModule中使用字符串

```swift
var text2: LocalizedStringKey = "Hello text2 from module1"
```
注意方法3无法指定bundle, 方法1和方法2可以, 因此如果是定义在framework中的代码, 要使用自己的bundle, 可以使用方法1和2.


## 2. 添加多语言支持

## 1. 导出localization

### 1.1 导出

可以导出workspace中各个project的localization, 也可以导出全部, 菜单入口: Product/Export Localizations/, 指令:
```bash
xcrun xcodebuild \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en \
  -exportLanguage de \
  ...
```
### 1.2 可能的错误
<div align=center><img src="./resource/error.png" width="80%" height="80%" alt="Product/Export Localizations"/></div>

Xcode(13.2.1)这里有一个bug, 不会根据依赖关系编译工程, 注意这个错误里面的`arm64`.
```bash
xcodebuild: error: Unable to build project for localization string extraction
	Reason: Failed to build.
	Please see the build logs for failure description.
```

### 1.3 Fix
只需要手动编译一遍对应的架构`arm64`即可. 或者可以写个脚步先编译一遍工程生成`arm64`架构[script](./resource/export.sh):

```bash
#!/usr/bin/env bash

set -euo pipefail

xcrun xcodebuild ARCHS=arm64 ONLY_ACTIVE_ARCH=NO \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" \
  -configuration Debug > /dev/null 2>&1

xcrun xcodebuild \
  -workspace "Localization.xcworkspace" \
  -scheme "Localization" \
  -configuration Debug \
  -exportLocalizations \
  -localizationPath "export" \
  -exportLanguage en
```

# 0. 参考

[官方文档](https://developer.apple.com/documentation/xcode/exporting-localizations)