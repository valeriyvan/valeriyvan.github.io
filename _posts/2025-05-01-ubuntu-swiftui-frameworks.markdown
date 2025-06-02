---
layout: post
title:  "Ubuntu: SwiftUI Frameworks, apt vs apt-get, and Swift Cross-Platform Development"
date:   2025-05-01 21:36:00 +0200
categories: [SwiftUI, adwaita-swift, swift-cross-ui, Ubuntu, apt, Homebrew]
---
TIL that [adwaita-swift](https://git.aparoksha.dev/aparoksha/adwaita-swift), as promoted in the blog post [Writing GNOME Apps with Swift](https://www.swift.org/blog/adwaita-swift/) on [Swift.org](https://www.swift.org/), is currently unusable. I couldn't get any of the demo apps running on Ubuntu. Filed an issue [adwaita-swift build error](https://git.aparoksha.dev/aparoksha/adwaita-swift/issues/60).

That's why I started exploring other SwiftUI-like cross-platform frameworks. TIL about [swift-cross-ui](https://github.com/stackotter/swift-cross-ui), but it failed during the installation of `swift-bundler`. I filed an issue: [Installing on Ubuntu 22.04 fails](https://github.com/stackotter/swift-bundler/issues/74), and the maintainer kindly provided installation guidance in the comments.

TIL that `apt` is essentially a newer, more user-friendly front-end to `apt-get`: [What’s the Difference Between APT and APT-GET?](https://aws.amazon.com/compare/the-difference-between-apt-and-apt-get/).  

Meanwhile, Linux reminds me it's pain sometimes — `brew install libadwaita` failed with an error:

```
==> Pouring llvm--20.1.3.x86_64_linux.bottle.tar.gz
Error: Too many open files @ rb_sysopen - /home/linuxbrew/.linuxbrew/Cellar/llvm/20.1.3/bin/llvm-lto
```

TIL uninstalling packages in `apt` and `apt-get` is done with `remove` instead of expected `uninstall`, like `sudo apt remove libadwaita-1-dev libgtk-4-dev`.

TIL that uninstalling packages with `apt` or `apt-get` uses the `remove` command instead of the more intuitive `uninstall`.  For example: `sudo apt remove libadwaita-1-dev libgtk-4-dev`.

TIL how to check Ubuntu version in command line: `lsb_release -a`:

```bash
$>lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 22.04.5 LTS
Release:	22.04
Codename:	jammy
```

TIL [Homebrew could be used on Linux as well](https://docs.brew.sh/Homebrew-on-Linux).

At the end of the day, I finally got my first Swift-based UI app running on Ubuntu, build with [swift-cross-ui](https://github.com/stackotter/swift-cross-ui):

![My first Swift-based UI app running on Ubuntu](/assets/images/Screenshot%20from%202025-05-01%2017-24-31.png "My first Swift-based UI app running on Ubuntu")
