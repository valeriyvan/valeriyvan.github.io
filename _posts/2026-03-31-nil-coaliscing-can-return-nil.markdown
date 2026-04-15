---
layout: post
title:  "TIL that in Swift a version of `??` returning an optional exists"
date:   2026-03-31 19:15:00 +0200
categories: ["Swift"]
---
Reported a bug in Swift [False misleading warning: Left side of nil coalescing operator '??' has non-optional type 'Int?', so the right side is never used](https://github.com/swiftlang/swift/issues/88204).

TIL that a [version of `??` returning an optional exists](https://github.com/swiftlang/swift/blob/b866471e8c03512f81ff71abc97729130f035a25/stdlib/public/core/Optional.swift#L911).

As I understand it, the compiler intentionally chose version returning `T?` to ‘fix’ the code and make it compile. 
