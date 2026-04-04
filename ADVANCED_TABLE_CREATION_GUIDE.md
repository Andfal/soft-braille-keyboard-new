# Advanced Guide: Creating Minimalist or Specific Braille Tables

With the latest updates to the Soft Braille Keyboard (v12), the Table Creator has become a fully modular tool. You can now create specialized tables that only include specific categories of characters, such as **numbers-only** or **symbols-only** layouts.

## 1. How to create a "Specific-Purpose" Table
If you want a table that only handles a specific set of keys (ignoring standard alphabets), follow these steps in the Table Creator:

1.  **Set "Base Table" to "None":** This prevents inheriting rules from existing system languages.
2.  **Set "Alphabet" to "None":** This ensures that no standard letter sets (like Latin, Cyrillic, etc.) are included.
3.  **Select only what you need:**
    *   **For Numbers-only:** Choose your preferred Number System (e.g., Classic) and leave Alphabet as "None".
    *   **For Symbols-only:** Set both Alphabet and Number System to "None", then manually add your custom symbols using the "Add Mapping" button.

## 2. Total Customization (Building from Scratch)
By setting all spinners (Base, Alphabet, Numbers) to **"None"**, you start with a completely blank slate. The keyboard will only respond to the manual mappings you define. This is perfect for creating:
*   Math-only keyboards.
*   Specialized coding/programming layouts.
*   Experimental Braille systems.

## 3. Under the Hood: Fixed Engine Code
Every table you generate, no matter how minimal, will automatically include a small block of **Fixed Engine Code** at the beginning. 

This code is technically required for the Liblouis engine to function correctly. It handles internal system communication and ensures that basic Braille patterns are recognized by the software. This fixed code works silently in the background and does not interfere with your custom letter or number definitions.

## Summary
The "None" option is your most powerful tool for expert customization. It allows you to build modular Braille experiences by choosing only the specific "building blocks" you want to use.
