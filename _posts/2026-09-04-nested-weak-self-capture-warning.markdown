---
layout: post
title:  "TIL Swift 6.4 warns about weak captures in nested closures"
date:   2026-09-04 21:39:00 +0200
categories: ["Swift", "memory-management", "closures"]
---
TIL Swift 6.4 warns when an inner closure captures `[weak self]` while the outer closure implicitly captures `self` strongly: [Why Swift is introducing a warning for weak captures within nested closures](https://www.swiftbysundell.com/articles/warning-for-nested-weak-self-closure-captures/).

```swift
timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
    service.load { [weak self] in self?.update($0) } // outer closure still holds self strongly
}
```

Fix: move `[weak self]` to the outer closure.

`[weak self]` buried in an inner closure always bothered me — I had to trace the whole capture chain to see whether it does what the author expected. Good to have the compiler do this now.
