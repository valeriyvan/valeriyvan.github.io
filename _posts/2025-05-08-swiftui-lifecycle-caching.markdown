---
layout: post
title:  "SwiftUI: Lifecycle Patterns and Task-Based Image Caching"
date:   2025-05-08 21:30:00 +0200
categories: [SwiftUI]
---
Read [Clean Up Your Sheet API](https://medium.com/@jpmtech/clean-up-your-sheet-api-7763b796cd94).

Read [The Simple Life(cycle) of a SwiftUI View in 2025](https://captainswiftui.substack.com/p/the-simple-lifecycle-of-a-swiftui).

Read apple documentation [Migrating to the SwiftUI life cycle](https://developer.apple.com/documentation/swiftui/migrating-to-the-swiftui-life-cycle).

Hm, what's `Task<CGImage, Never>` in [Swift Concurrency: Keeping Completed Tasks as Cache Objects?](https://forums.swift.org/t/swift-concurrency-keeping-completed-tasks-as-cache-objects/70796)?

```swift
actor ImageLoader
{
    private var activeTasks: [URL: Task<CGImage, Never>]

    // Construct a single image
    private func perform(with url: URL) async -> CGImage
    {
        // Fetch URL data, generate CGImage, etc. Ignore errors for brevity.
    }


    // Retrieve a single image from the cache, if possible, or create a new Task if needed.
    func image(for url: URL) async -> CGImage
    {
        if let task = activeTasks[url] 
        {
            // If the task has already finished, this returns immediately.
            return await task.value
        }
        else
        {
            let task = Task<CGImage, Never> {
                return await perform(with: url)
            }
            activeTasks[url] = task
        }
    }
}
```
