# Latest Updates - March 11, 2026

## 1. New "Tabletop" Layout
- Added a dedicated **Tabletop** keyboard layout designed for flat-surface typing (Perkins style).
- Unlike the standard "Horizontal" mode, it does NOT automatically flip gestures or swap hands based on orientation.
- Arranges dots from left to right: 3-2-1 (left hand) and 4-5-6 (right hand).

## 2. Advanced Swipe Gesture Controls
- **Swap Swipe Axes:** Added an option to swap horizontal and vertical gesture axes.
- **Independent Inversions:** Added options to independently invert horizontal (Left <-> Right) and vertical (Up <-> Down) swipe directions.
- These settings allow for full customization of navigation regardless of device orientation.

## 3. Intelligent Table Analysis & Automation
- **Deep Content Analysis:** The build script now analyzes the actual content of Liblouis tables (metadata, included charsets, and dot patterns) to classify them as 6-dot or 8-dot, moving away from unreliable filename-based detection.
- **Automated `tablelist.xml`:** The official table list is now automatically generated during build, ensuring consistent synchronization between the app and the translation service.
- **Certified Index:** Created a new enriched index (`liblouis_files.txt`) with metadata for all 450+ tables.
- **Fixed Duplicates:** Improved deduplication logic to prevent official tables from appearing twice when "Show Extended Tables" is enabled.
- **Arabic 8-dot Support:** Correctly identified and included `ar-ar-comp8.utb` in the official tables list.

## 4. Enhanced Calibration & Stability
- **Geometric Validation:** Instant 6/8 finger calibration now includes geometric checks to prevent hand overlapping or incorrect orientation errors.
- **Selection Stability:** The app now respects the user's manual table selection when toggling extended tables and prioritizes official versions in automatic selection mode.
- **Clean Installation Support:** Optimized the update script to ensure fresh asset extraction on first run.
