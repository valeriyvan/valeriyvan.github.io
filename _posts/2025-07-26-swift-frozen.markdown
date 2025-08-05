---
layout: post
title:  "Read about types layout in Swift"
date:   2025-07-26 22:43:00 +0200
categories: ["@frozen", Swift, C]
---
Read [How Anthropic teams use Claude Code](https://www-cdn.anthropic.com/58284b19e702b49db9302d5b6f135ad8871e7658.pdf).

TIL there's [the open source handheld CNC router](https://www.compassrouter.com) - the 3D designs, firmware, and electronics are all [open-source](https://github.com/camchaney/handheld-cnc).

Read [The Swift Runtime: Heap Objects](https://belkadan.com/blog/2020/08/Swift-Runtime-Heap-Objects/), [Struct Memory Layout](https://forums.swift.org/t/struct-memory-layout/72209).

TIL [`@frozen`](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/attributes/#frozen) has impact on performance:

> Marking a structure or enumeration as frozen gives up this flexibility to gain performance: Future versions of the library can make only limited changes to the type, but the compiler can make additional optimizations in code that interacts with the type’s members.

Read [Does Swift guarantee the storage order of fields in classes and structs?](https://stackoverflow.com/questions/39302834/does-swift-guarantee-the-storage-order-of-fields-in-classes-and-structs/39302927#39302927). Structs and tuples currently share the same layout algorithm, noted as the "Universal" layout algorithm in the compiler implementation. The padding/alignment is different from C.

It refers a bit outdated document [Type Layout](https://github.com/swiftlang/swift/blob/main/docs/ABI/TypeLayout.rst) in Swift Compiler.

Read [\[swift-users\] Mapping C semantics to Swift](https://lists.swift.org/pipermail/swift-users/Week-of-Mon-20160516/001968.html):

> Swift structs have unspecified layout. If you depend on a specific layout, you should define the struct in C and import it into Swift for now.
