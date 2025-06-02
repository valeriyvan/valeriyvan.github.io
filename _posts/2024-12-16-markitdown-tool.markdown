---
layout: post
title:  "Tools: markitdown for Converting Files to Markdown"
date:   2024-12-16 22:10:00 +0200
categories: [markitdown, markdown]
---
TIL [markitdown](https://github.com/microsoft/markitdown) from Microsoft - a utility tool for converting various files to Markdown (e.g., for indexing, text analysis, etc.). It presently supports:

* PDF (.pdf)
* PowerPoint (.pptx)
* Word (.docx)
* Excel (.xlsx)
* Images (EXIF metadata, and OCR)
* Audio (EXIF metadata, and speech transcription)
* HTML (special handling of Wikipedia, etc.)
* Various other text-based formats (csv, json, xml, etc.)

It did work great for me with .docx, .pdf. For .jpeg it got only image size, nothing was OCRed.
