---
layout: post
title:  "Swift: CustomStringConvertible Best Practices and String(describing:)"
date:   2025-05-06 17:18:00 +0200
categories: [Swift, CustomStringConvertible]
---
Interesting discussion [How to avoid calling `CustomStringConvertible.description` as a property?](https://forums.swift.org/t/how-to-avoid-calling-customstringconvertible-description-as-a-property/72605)

Documentation [`CustomStringConvertible.description`](https://swiftinit.org/docs/swift/swift/customstringconvertible.description) states: 

> Calling this property directly is discouraged. Instead, convert an instance of any type to a string by using the `String(describing:)` initializer. This initializer works with any type, and uses the custom description property for types that conform to `CustomStringConvertible`.

Hmm. It's interesting that documentation doesn't mention why `String(describing:)`` is the preferred method of converting a value of any type to a `String`.
