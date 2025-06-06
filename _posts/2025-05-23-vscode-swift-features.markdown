---
layout: post
title:  "VS Code: Swift Extension Advanced Features"
date:   2025-05-23 19:38:00 +0200
categories: ["VS Code", xcrun]
---
TIL how to use `xcrun` to fine where from tools are run: `xcrun --find swift-help`.

TIL [VS Code Swift extension lesser known features](https://opticalaberration.com/2022/11/vscode-features.html). Why Xcode don't have these?

- The extension provides the ability to replace a package dependency with a locally edited version of that dependency via a context menu in the package dependency view. Right click on the dependency you want to replace and select Use Local Version.

- The command Run Swift Script will use the contents of the current editor that has focus and run it as a Swift script. It is not necessary to have a file that backs up the editor contents. This means you can open a new file, set its type to Swift and treat its contents as if it is a Swift Playground. With this you can test new Swift features quickly and easily or maybe remind yourself how an API works. Swift scripts are limited to only importing frameworks that come with your Swift installation like Foundation.

- Run Swift Snippet which will run the Snippet and display its output in the terminal and Debug Swift Snippet which will run the Snippet inside a debugger.

- Type `///`` above a function and an option to insert the block comment will appear next to your cursor.

- The Remote - Containers extension allows you to run Visual Studio Code inside a Docker container to compile and test your code inside that container. It is possible to use this with the Swift extension to test/debug your Swift code. This is particularly useful if you are developing on macOS but deploying to Linux as differences in Linux and macOS performance or features can be caught early.