---
layout: post
title:  "SwiftUI: Preview Macro and SceneStorage"
date:   2025-01-10 16:18:00 +0200
categories: [SwiftUI, SceneStorage]
---
Read [The power of previews in Xcode](https://swiftwithmajid.com/2024/11/26/the-power-of-previews-in-xcode/).

It has example of a preview for views with binding which requires additional boilerplate where you have to wrap the view with another view defining a state for your binding and then pass it to the previewing view.

Fortunately, Xcode 16 introduced the `Previewable` macro type.

TIL to use #Preview macro: [Mastering Preview macro in Swift](https://swiftwithmajid.com/2023/10/17/mastering-preview-macro-in-swift/).

TIL `SceneStorage` property wrapper: [State restoration in SwiftUI](https://swiftwithmajid.com/2022/03/10/state-restoration-in-swiftui/).
