---
layout: post
title:  "TIL pattern matching could be used in `do catch` in Swift"
date:   2025-11-11 16:23:00 +0200
categories: ["Swift", "Claude Code"]
---
Watched [Claude Code Multitasking Made EASY](https://www.youtube.com/watch?v=Bz5fyyCa2-0).

TIL pattern matching could be used in `do catch` in Swift - there's no need to use `switch`:

```swift
enum IntParsingError: Error {
    case overflow
    case invalidInput(Character)
}

do {
    let price = try Int(validating: "$100")
} catch IntParsingError.invalidInput(let invalid) {
    print("Invalid character: '\(invalid)'")
} catch IntParsingError.overflow {
    print("Overflow error")
} catch {
    print("Other error")
}
```