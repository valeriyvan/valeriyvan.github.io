---
layout: post
title:  "Swift: consume Operator and Parameter Ownership"
date:   2025-02-10 21:06:00 +0200
categories: [Swift, consume, borrowing, consuming]
---
TIL [`consume` operator to end the lifetime of a variable binding, available from Swift 5.9](https://www.hackingwithswift.com/swift/5.9/consume-operator).

Swift proposal [`consume` operator to end the lifetime of a variable binding](https://github.com/swiftlang/swift-evolution/blob/main/proposals/0366-move-function.md).

Does `consume` make `autoreleasing` redundant?

Swift proposal [`borrowing` and `consuming` parameter ownership modifiers](https://github.com/swiftlang/swift-evolution/blob/8b38f1739a17b40f939a30deb799144bf48663bc/proposals/0377-parameter-ownership-modifiers.md).

> That is where the `consume` operator comes into play. `consume` consumes the current value of a **binding with static lifetime**, which is either an unescaped local `let`, unescaped local `var`, or function parameter, with no property wrappers or get/set/read/modify/etc. accessors applied. 

What are these local `let` and local `var`? What is read accessor?
