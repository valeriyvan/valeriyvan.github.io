---
layout: post
title:  "Programming: Vibe Coding, Swift Runtime & Metal Shaders"
date:   2025-04-14 21:18:00 +0200
categories: ["Vibe coding", Swift, "Metal shaders", C++, "Swift Method Dispatch", JSON]
---
TIL what does Vibe coding mean: [12 Rules to Vibe Code Without Frustration](https://substack.com/inbox/post/159039821).

Read [How I Stole Your ChatGPT API Keys](https://blog.jacobstechtavern.com/p/how-i-stole-your-api-keys) by Jacob’s Tech Tavern.

[The Swift Runtime: Your Silent Partner](https://blog.jacobstechtavern.com/p/the-swift-runtime-your-silent-partner?utm_source=profile&utm_medium=reader2) by Jacob’s Tech Tavern.

Read a very interesting story: [My Toddler Loves Planes, So I Built Her A Radar](https://blog.jacobstechtavern.com/p/my-toddler-loves-planes-so-i-built) by Jacob’s Tech Tavern. Here are some particularly appealing excerpts:

> iOS 17 comes with support for Metal shaders built into colorEffect, so it implementing this effect is easier than ever before.

> I might save digging into the C++ for another article. Feel free to steal it — most importantly, I created a view modifier that can apply the CRT effect to any view we like!

I might experiment with shaders to give my Python iOS app a CRT display look—once I find time to revive the project. This post includes a code snippet that looks like a great starting point.

TIL [`@AppStorage`](https://developer.apple.com/documentation/swiftui/appstorage) in SwiftUI

TIL [AppScreens](https://appscreens.com) — a tool that helps streamline the process of creating AppStore screenshots.

Read [The Swift Method Dispatch Deep Dive](https://blog.jacobstechtavern.com/p/compiler-cocaine-the-swift-method) by Jacob’s Tech Tavern. Consider the guidance the Swift team gives us about reducing dynamic dispatch - `final`, `private`, and whole-module optimisation.

Noting for future self: a handy CLI for pretty-printing JSON from the clipboard:  
```bash
pbpaste | python -m json.tool
```
