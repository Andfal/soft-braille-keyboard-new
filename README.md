# Soft Braille Keyboard (Modern AndroidX Version)

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Android](https://img.shields.io/badge/Android-8.0%2B%20(API%2026%2B)-green.svg)](https://developer.android.com)

An accessible on-screen soft Braille keyboard input method (IME) for Android devices, providing high-speed, reliable, and comfortable typing for blind and visually impaired users.

This branch (main) is the **primary modern version** of the project, fully refactored for **AndroidX**, targeting modern Android versions (Android 8.0 Oreo up to Android 15+ / API 34+), with 16KB memory page alignment, updated component lifecycles, and modern Android APIs.

For older Android versions (API 14 to API 25, Android 4.0+), please refer to the [classic](https://github.com/catilina2/soft-braille-keyboard-new/tree/classic) legacy branch.

---

## 📜 Credits & Project Lineage

This project is part of the ongoing evolution of Soft Braille Keyboard:

* **Original Creator:** [Daniel Dalton](https://github.com/danieldalton10/Soft-Braille-Keyboard) (Eyes-Free project / Google BrailleBack) – Conceptualization and initial implementation of Soft Braille Keyboard.
* **Intermediate Continuation:** [vortex1024/soft-braille-keyboard](https://github.com/vortex1024/soft-braille-keyboard) – The foundational repository from which this fork originated.
* **Current Development & Enhancements:**
  * **Modern AndroidX Architecture:** Full migration to AndroidX libraries, modern lifecycle components, and SDK 26+ optimizations.
  * **16KB Page Alignment:** Native C/C++ libraries aligned for 16KB memory page boundaries in Android 15+.
  * **Liblouis 3.36+ Table System:** Comprehensive bundle of all 455+ official Liblouis translation tables, plus custom Italian 6-dot and 8-dot tables (it-it-g1.ctb, it-it-comp8.utb, it-it-numerazione-canonica.ctb).
  * **Direct Boot Support:** Keyboard operates in direct boot mode, allowing typing and accessibility right after restart before first unlock.
  * **Low-Latency Sound Themes:** High-performance sound engines (Mechanical, Typewriter, Bubbles, Custom) using AudioAttributes and low-latency audio pipelines.
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
