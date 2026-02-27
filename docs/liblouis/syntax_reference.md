# Liblouis 3.36.0 Table Syntax Reference

## Character Definitions
- **`space \uXXXX dots`**: Defines whitespace.
- **`punctuation \uXXXX dots`**: Defines punctuation.
- **`digit \uXXXX dots`**: Defines digits.
- **`letter \uXXXX dots`**: Defines a letter (no case).
- **`uppercase \uXXXX dots`**, **`lowercase \uXXXX dots`**: Case-specific letters.
- **`sign \uXXXX dots`**: Symbols.

## Translation Rules
- **`always \uXXXX dots`**: Standard mapping for forward and back translation. PREFERRED over `char` for general mapping.
- **`char \uXXXX dots`**: Defines character attributes AND mapping. Use for base definitions.

## Indicators
- **`numsign dots`**: Number sign (usually 3456).
- **`capsletter dots`**: Capital sign for single letter (usually 6).
- **`begcaps dots`**, **`endcaps dots`**: Capital passage indicators.

## Include Order (Critical)
1. Base definitions (e.g., `braille-patterns.cti`).
2. Custom rules.
3. Fallback character definitions (e.g., `latinLetterDef6Dots.uti`).

## Character Encoding
- Use `\uXXXX` for 16-bit Unicode characters.
- Use literal UTF-8 characters without BOM if the file system supports it.
- **Avoid `\xXXXX`** as it is often interpreted as 8-bit or leads to parsing errors in some versions if not 2-digit.

## Back-translation Note
- For effective back-translation (dots to text), ensure rules are unambiguous.
- Use `noback` prefix to skip rules that cause collisions in back-translation.
