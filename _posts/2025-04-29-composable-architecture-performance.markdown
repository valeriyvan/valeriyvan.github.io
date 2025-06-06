---
layout: post
title:  "Swift: Composable Architecture Performance and Array Uniquing Optimization"
date:   2025-04-29 21:40:00 +0200
categories: [module.modulemap, "Composable Architecture", SwiftUI]
---
Read [Where to place custom `module.modulemap` for third party C library without touching their source code](https://forums.swift.org/t/where-to-place-custom-module-modulemap-for-third-party-c-library-without-touching-their-source-code/17920).

Read [The Composable Architecture: How Architectural Design Decisions Influence Performance](https://www.swiftyplace.com/blog/the-composable-architecture-performance).

Watched [Demystify SwiftUI](https://developer.apple.com/videos/play/wwdc2021/10022/).

Accidentally came across of very interesting and performant (if one could believe comment on Stack Overflow) implementation of method returning unique array elements [Array+Uniqued.swift](https://github.com/SwiftPackageIndex/SPIManifest/blob/main/Sources/SPIManifest/Array%2BUniqued.swift):

```swift
// From: https://stackoverflow.com/a/46354989
public extension Array where Element: Hashable {
    func uniqued() -> [Element] {
        var seen = Set<Element>()
        return filter { seen.insert($0).inserted }
    }
}
```
