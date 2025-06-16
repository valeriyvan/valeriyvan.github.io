---
layout: post
title:  "TIL UnsafeBufferPointer.extracting(_:) method and proposed modify and read accessors"
date:   2025-06-06 21:37:00 +0200
categories: [TIL, Swift, "Swift Evolution", "Memory Management"]
---
TIL about [`UnsafeBufferPointer.extracting(_:)`](https://developer.apple.com/documentation/swift/unsafebufferpointer/extracting(_:)-nivx), a method for creating a buffer pointer over items in an already existing buffer pointer. This was new to me—I previously used ranges to construct such buffers.

Also explored Swift accessor evolution proposals:

- Read the [[Pitch] Modify and read accessors](https://forums.swift.org/t/pitch-modify-and-read-accessors/75627/1) discussion on Swift forums
- Reviewed the [Modify and read accessors](https://github.com/swiftlang/swift-evolution/blob/5b22f1255c16aae95c8b9941a3ad54b7f66588e0/proposals/NNNN-modify-and-read-accessors.md) Swift Evolution proposal (awaiting review at time of writing)
- Studied the [Yielding accessors](https://github.com/swiftlang/swift-evolution/blob/eab7cae4fb066dd6b954a761cb8341b6cc89d148/proposals/0474-yielding-accessors.md) Swift Evolution proposal (in active review April 8-22, 2025)
