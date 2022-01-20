# 1. RadioGroup Picker

Compose a radio group picker for iOS, declared as below:

```swift
struct RadioGroupPicker<SelectionValue, Content> where SelectionValue : Hashable, Content : View
```
With `content: View`, not only text style but alos custom item view can be supported.

## Usage:

```swift
struct RadioGroupPicker<SelectionValue, Content> where SelectionValue : Hashable, Content : View
```

## Demo
![Tux, the Linux mascot](resource/output.gif)

## Ref:

https://www.avanderlee.com/swift/command-line-tool-package-manager/

