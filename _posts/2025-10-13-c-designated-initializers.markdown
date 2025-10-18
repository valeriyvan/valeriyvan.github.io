---
layout: post
title:  "TIL C99 allows initializers like `int a[6] = { [4] = 29, [2] = 15 };`"
date:   2025-10-13 21:06:00 +0200
categories: ["C", "C99", "Designated Initializers"]
---
TIL C99 allows following initializers. It's described in[Designated Initializers](https://gcc.gnu.org/onlinedocs/gcc/Designated-Inits.html).

```C
int a[6] = { [4] = 29, [2] = 15 };
int widths[] = { [0 ... 9] = 1, [10 ... 99] = 2, [100] = 3 };
```
