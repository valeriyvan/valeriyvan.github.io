---
layout: post
title:  "Swift: 6.2 Default Optional String Interpolation and SwiftUI onChange"
date:   2025-05-09 22:05:00 +0200
categories: [Swift, stdlib, "String intermolation"]
---
TIL [Swift 6.2 brings default to optional string interpolation](https://github.com/swiftlang/swift/pull/81360) making following possible:

```swift
var age: Int? = 48
print("Your age is \(age, default: "unknown")")
```
Read [Understanding SwiftUI's onChange](https://fatbobman.com/en/posts/onchange/).
