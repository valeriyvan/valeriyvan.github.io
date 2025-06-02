---
layout: post
title:  "SwiftUI: Text Formatting and iOS Packet Capture"
date:   2025-05-26 21:28:00 +0200
categories: [SwiftUI]
---
TIL that SwiftUI allows combining multiple `Text` views into a single view using the `+` operator, and it also supports string interpolation: [`Text` concatenation vs `Text` interpolation in SwiftUI](https://nilcoalescing.com/blog/TextConcatenationVsTextInterpolationInSwiftUI/). 

TIL `Text` in SwiftUI supports markdown styles for formatting: [Plurals with SwiftUI](https://samwize.com/2025/04/11/plurals-with-swiftui):

```Swift
Text("**Bold world**")
Text("_Italy world_")
Text("~~Cancer~~ world")
Text("`Text(isGood)`")
Text("Link to [website](https://valeriyvan.com)")
    .tint(.pink)
```

Read nice Apple documentation [Recording a Packet Trace](https://developer.apple.com/documentation/network/recording-a-packet-trace).

> Both macOS and iOS have built-in support for packet traces. This article explains how to record a packet trace on both platforms.

> iOS doesn't let you record a packet trace directly. However, you can use your Mac to record a packet trace on an attached iOS device using the Remote Virtual Interface (RVI) mechanism.