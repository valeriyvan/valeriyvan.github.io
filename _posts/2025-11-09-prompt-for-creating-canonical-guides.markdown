---
layout: post
title:  "TIL prompt for creating \"canonical guides\""
date:   2025-11-09 21:37:00 +0200
categories: [prompt]
---
Good documentation like [@Observable in Swift (Observation) — canonical guide (as of Nov 7, 2025)](https://chatgpt.com/share/690e2ab6-ffc4-800b-a736-70e0de6ad87b) could be created with following prompt:

`I want you to make markdown documentation (using only headings lists and links) of the @observable macro used in Swift as of iOS / macOS 26. I want you to document both general practices and all the critical gotchas, obscure issues that you might inflict if using it incorrectly you find online. I want this to be a canonical documentation on how to use and what to avoid when you use at observable macro. Also add a section on how to migrate from observable object to observable. Be sure to provide relevant code samples`

Credit goes to someone in Twitter which I cannot find now.
