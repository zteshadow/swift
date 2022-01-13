# Localization

## 1. 添加字符串

## 2. 添加多语言支持

## 3. 导出localization

### 3.1 导出

可以导出workspace中各个project的localization, 也可以导出全部, 入口地址: Product/Export Localizations/
<div align=center><img src="./resource/export.png" width="80%" height="80%" alt="Product/Export Localizations"/></div>

### 3.2 可能的错误

<div align=center><img src="./resource/error.png" width="80%" height="80%" alt="Product/Export Localizations"/></div>

Xcode这里有一个bug, 不支持根据依赖关系进行编译, 注意这个错误里面的`arm64`, 只需要手动编译一遍对应的架构即可.

### 3.3 Fix



# 4. 参考

[官方文档](https://developer.apple.com/documentation/xcode/exporting-localizations)