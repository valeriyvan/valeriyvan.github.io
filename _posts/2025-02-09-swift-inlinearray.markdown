---
layout: post
title:  "Swift: InlineArray Fixed-Size Arrays"
date:   2025-02-09 21:13:00 +0200
categories: [Swift, InlineArray, "@available", ManagedBuffer]
---
TIL Swift will have fixed size arrays: [InlineArray, a fixed-size array](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0453-vector.md).

```swift
public struct InlineArray<let count: Int, Element: ~Copyable>: ~Copyable {}
```
I was surprised to discover that Swift accepts constants in generic declarations, enabling definitions like `InlineArray<4, Int>`. I look forward to reading more documentation on this topic.


Another intriguing finding: `@available` attribute could be used to check not only the Swift version but also the version of the Swift Standard Library:

```swift
@available(SwiftStdlib X.Y)
extension InlineArray: Equatable where Element: Equatable // & Element: Copyable
```

TIL Swift already supports [Temporary uninitialized buffers](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0322-temporary-buffers.md).

I’d like to remember this quote for future reference—even though it only indirectly relates to the proposal above:

> To me, ManagedBuffer says "I want to allocate a refcounted object with an arbitrarily long tail-allocated buffer" thus avoiding two heap allocations when one will do. I can then use that object as I would use any other object.
