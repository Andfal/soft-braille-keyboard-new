# Soft Braille Keyboard (Classic Legacy Version)

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Android](https://img.shields.io/badge/Android-4.0%2B%20(API%2014%2B)-green.svg)](https://developer.android.com)

An accessible on-screen soft Braille keyboard input method (IME) for Android devices, providing high-speed and comfortable typing for blind and visually impaired users.

This branch (classic) preserves the **classic, legacy-compatible architecture** (based on ndroid-support-v4 and minSdkVersion 14), ensuring full compatibility with older Android versions (from Android 4.0 Ice Cream Sandwich up to modern Android versions).

For the modern AndroidX version (API 26+, Android 8.0 to Android 15+), please refer to the [main](https://github.com/vortex1024/soft-braille-keyboard/tree/main) branch.

---

## 📜 Credits & Project Lineage

This project is part of the ongoing evolution of Soft Braille Keyboard:

* **Original Creator:** [Daniel Dalton](https://github.com/danieldalton10/Soft-Braille-Keyboard) (Eyes-Free project / Google BrailleBack) – Conceptualization and initial implementation of Soft Braille Keyboard.
* **Intermediate Continuation:** [vortex1024/soft-braille-keyboard](https://github.com/vortex1024/soft-braille-keyboard) – The foundational repository from which this fork originated.
* **Current Development & Enhancements:**
  * **Dual Architecture:** Maintained classic legacy branch (classic, API 14+) and modern AndroidX branch (main, API 26+).
  * **Liblouis 3.36+ Table System:** Synchronized with all 455+ official Liblouis translation tables, plus custom Italian 6-dot and 8-dot tables (it-it-g1.ctb, it-it-comp8.utb, it-it-numerazione-canonica.ctb).
  * **Direct Boot Support:** Allows keyboard activation and protected storage access immediately after boot before initial device unlock.
  * **16KB Page Alignment:** Verified native libraries aligned for Android 15+ 64-bit page compatibility.
  * **Low-Latency Sound Themes:** Implemented high-performance sound themes (Mechanical, Typewriter, Bubbles, Custom) using AudioAttributes and low-latency audio pipelines.
  * **Offline Multi-Language Spell Checker:** Built-in spell checking with local word frequency dictionaries and full User Dictionary integration.
  * **Screen Reader Integrations:** Optimized touch interaction and feedback for both Google TalkBack and Jieshuo screen readers.

---

## Key Features

- **6-Dot and 8-Dot Braille Input:** Supports standard contracted/uncontracted Braille, 8-dot computer Braille, and custom canonical numbering tables.
- **Gesture-Based Editing:** Fast gesture navigation for cursor movement, selection, word deletion, line deletion, and clipboard operations.
- **Audio Feedback & Sound Schemes:** High-performance sound themes, WAV character echoes, and system TTS volume integration.
- **Offline Spell Checker & Suggestions:** Real-time spell checking with localized dictionaries, word completions, and elision handling.
- **Emoji Search Mode:** Integrated emoji picker searchable directly in Braille.

---

## Building the Project

### Prerequisites
* **JDK 17 or JDK 21** (e.g. Android Studio JBR)
* **Android SDK & NDK**

### Build Commands
`ash
# Debug build
./gradlew assembleDebug

# Release build
./gradlew assembleRelease
`

---

## License

Licensed under the [Apache License, Version 2.0](LICENSE).
Liblouis translation engine is licensed under the [LGPL v2.1+](https://github.com/liblouis/liblouis/blob/master/COPYING.LIB).
