---
layout: post
title:  "TIL protocol in Swift could be constrained to inherit from a class"
date:   2026-02-19 21:02:00 +0200
categories: ["Swift", "protocol"]
---
TIL [protocol in Swift could be constrained to inherit from a particular class](https://x.com/johnsundell/status/1110491386636308480?lang=en). Two syntaxes are available:

```
protocol MyView: UIView { /*...*/ }
protocol MyView where Self: UIView { /*...*/ } 
```
