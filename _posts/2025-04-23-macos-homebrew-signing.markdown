---
layout: post
title:  "macOS: Code Signing Issues with Homebrew Libraries in Swift Packages"
date:   2025-04-23 22:36:00 +0200
categories: [libpcap]
---
TIL macOS app cannot be linked with a library wrapped in Swift package as system library installed with homebrew (in my case it was libpcap). The reason is macOS app cannot launch dylib signed with different signature. Came across following which disables SIP-signature enforcement. The solution is only viable at development/debug stage.

As last resort: rebuild libpcap from source, disabling SIP-signature enforcement:
```
brew uninstall libpcap
git clone https://github.com/the-tcpdump-group/libpcap.git
cd libpcap
./configure && make
sudo make install
```

After several days of debugging Xcode refused to launch app giving the same runtime error:

```
dyld[5541]: Library not loaded: /usr/local/lib/libpcap.A.dylib
  Referenced from: <C6B84835-7D5E-31F1-B303-25F0D1A580C8> /Users/**********/Library/Developer/Xcode/DerivedData/wirereplay-gggbmywjfqczwdhfddywaliqyowk/Build/Products/Debug/wirereplay.app/Contents/MacOS/wirereplay.debug.dylib
  Reason: tried: '/Users/**********/Library/Developer/Xcode/DerivedData/wirereplay-gggbmywjfqczwdhfddywaliqyowk/Build/Products/Debug/libpcap.A.dylib' (no such file), '/usr/lib/system/introspection/libpcap.A.dylib' (no such file, not in dyld cache), '/usr/local/lib/libpcap.A.dylib' (code signature in <6D8643CE-EF31-3939-810D-5E9EA5D9F308> '/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' not valid for use in process: mapping process and mapped file (non-platform) have different Team IDs), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libpcap.A.dylib' (no such file), '/usr/local/lib/libpcap.A.dylib' (code signature in <6D8643CE-EF31-3939-810D-5E9EA5D9F308> '/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' not valid for use in process: mapping process and mapped file (non-platform) have different Team IDs), '/Users/**********/Library/Developer/Xcode/DerivedData/wirereplay-gggbmywjfqczwdhfddywaliqyowk/Build/Products/Debug/libpcap.1.11.0-PRE-GIT.dylib' (no such file), '/usr/lib/system/introspection/libpcap.1.11.0-PRE-GIT.dylib' (no such file, not in dyld cache), '/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' (code signature in <6D8643CE-EF31-3939-810D-5E9EA5D9F308> '/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' not valid for use in process: mapping process and mapped file (non-platform) have different Team IDs), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' (no such file), '/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' (code signature in <6D8643CE-EF31-3939-810D-5E9EA5D9F308> '/usr/local/lib/libpcap.1.11.0-PRE-GIT.dylib' not valid for use in process: mapping process and mapped file (non-platform) have different Team IDs)
  ```
  
The only way to get rid of this error is turning off system integrity protection (SIP) as described in [Disabling and Enabling System Integrity Protection](https://developer.apple.com/documentation/security/disabling-and-enabling-system-integrity-protection). The remedy is worse than the illness.

Inability of macOS app to launch homebrew installed dylib renders useless Swift packages wrapping homebrew installed libraries as `systemLibrary` like as

```
.systemLibrary(
    name: "CPcap",
    providers: [
        .apt(["libpcap-dev"]),
        .brew(["libpcap"])
    ]
)
```
