---
layout: post
title:  "Swift: Package Plugins and Wrapping C/C++ Libraries"
date:   2025-04-25 21:37:00 +0200
categories: [Swift]
---
Watched WWDC 2024 session video [Create Swift Package plugins](https://developer.apple.com/videos/play/wwdc2022/110401/). It has examples how to run external commands during build process. Always wanted to run `cloc` automatically as part of build process.

Read [Swift Container Plugin](https://github.com/apple/swift-container-plugin).

> Swift Container Plugin can package any executable product defined in `Package.swift` in a container image and publish it to a container registry.

Read [Wrapping C/C++ Library in Swift](https://www.swift.org/documentation/articles/wrapping-c-cpp-library-in-swift.html) and tried wrapping in Swift package libpcap library build from sources.
