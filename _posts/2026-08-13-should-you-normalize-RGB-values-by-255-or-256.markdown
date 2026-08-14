---
layout: post
title:  "Read Should you normalize RGB values by 255 or 256?"
date:   2026-08-13 21:34:00 +0200
categories: [RGB]
---
Read [Should you normalize RGB values by 255 or 256?](https://30fps.net/pages/255-vs-256-division/) about two common apprroaches:

Standard division by 255

```python
pixels = img / 255.0
result = process(pixels)
output = np.trunc(result * 255 + 0.5)
```

Alternative division by 256

```python
pixels = (img + 0.5) / 256.0
result = process(pixels)
output = np.trunc(result * 256)
```
