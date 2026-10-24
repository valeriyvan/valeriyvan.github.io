---
layout: post
title:  "TIL how to trigger shake gesture in iOS simulator with command line"
date:   2026-09-25 21:09:00 +0200
categories: ["Apple Device Hub"]
---
TIL how to trigger shake gesture in iOS simulator with command line because suddenly Apple Device Hub has no menu for shake:

`xcrun simctl spawn booted notifyutil -p com.apple.UIKit.SimulatorShake`
