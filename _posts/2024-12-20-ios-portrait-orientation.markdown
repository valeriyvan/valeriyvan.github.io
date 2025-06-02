---
layout: post
title:  "iOS: Portrait Upside Down Orientation Support on Home Button-less Devices"
date:   2024-12-20 21:03:00 +0200
categories: []
---
TIL iOS devices without a Home button, such as iPhone 12, don't support portrait upside down orientation: [`UIViewController.supportedInterfaceOrientations`](https://developer.apple.com/documentation/uikit/uiviewcontroller/supportedinterfaceorientations).