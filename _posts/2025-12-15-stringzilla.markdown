---
layout: post
title:  "TIL StringZilla"
date:   2025-12-15 21:44:00 +0200
categories: ["StringZilla", "SIMD"]
---
TIL [https://github.com/ashvardanian/StringZilla](StringZilla), the GodZilla of string libraries, using SIMD and SWAR to accelerate binary and UTF-8 string operations on modern CPUs and GPUs. `StringZilla` can be added as a dependency in the Swift Package Manager. The package currently covers only the most basic functionality, but is planned to be extended to cover the full C++ API.
