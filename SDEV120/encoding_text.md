---
layout: base
title: Encoding Text for Computing
course: SDEV120
---

- [Encoding Text for Computing](#encoding-text-for-computing)
  - [ASCII (American Standard Code for Information Interchange)](#ascii-american-standard-code-for-information-interchange)
    - [How many values?](#how-many-values)
    - [What Kinds of Characters?](#what-kinds-of-characters)
      - [Control Characters](#control-characters)
      - [Printable Characters](#printable-characters)
        - [Numbers](#numbers)
        - [Letters](#letters)
        - [Punctuation and Symbols](#punctuation-and-symbols)
  - [Unicode (Universal Character Set)](#unicode-universal-character-set)
    - [How many values?](#how-many-values-1)
      - [UTF-8 (8-bit Unicode Transformation Format)](#utf-8-8-bit-unicode-transformation-format)
      - [UTF-16 (16-bit Unicode Transformation Format)](#utf-16-16-bit-unicode-transformation-format)
      - [UTF-32 (32-bit Unicode Transformation Format)](#utf-32-32-bit-unicode-transformation-format)
    - [What Kinds of (additional) Characters?](#what-kinds-of-additional-characters)
      - [Scripts (writing systems)](#scripts-writing-systems)
      - [Mathematical symbols](#mathematical-symbols)
      - [Currency](#currency)
      - [Notational Systems](#notational-systems)
      - [Emojis](#emojis)
    - [Usage](#usage)

# Encoding Text for Computing

<figure>
    <span>
        <img src="https://www.unicode.org/announcements/annc-iuc45-life-before-after.png" style="width: 40%">
    </span>
    <figcaption>
        <a href="https://blog.unicode.org/2021/08/">
            The Unicode Blog
        </a>
    </figcaption>
</figure>

A computer can only store numbers, so we need a way to represent text as numbers.

<p class="demo">Demo:</p>

- m02_letter_is_capital.py

## ASCII (American Standard Code for Information Interchange)

Origins in telegraphy from Bell during 1960s.

Very widely used today.

**_Summary:_**

- ASCII is a small and concise way to represent typical usage “text” characters.

### How many values?

Each character is mapped to a number.

7-bit ASCII is the original standard

- 2<sup>7</sup> = 128 characters

### What Kinds of Characters?

Reference: [https://www.ascii-code.com/](https://www.ascii-code.com/)

#### Control Characters

- Backspace
- Carriage return
- Line feed
- Tab
- Bell
- ...

Many of these, e.g. bell, were used for old printers.

#### Printable Characters

##### Numbers

- 0-9

##### Letters

- A-Z
- a-z

##### Punctuation and Symbols

- ! " # $ % & ' ( ) \* + , - . / : ; < = > ? @ [ \ ] ^ \_ ` { | } ~ ;
- ...

## Unicode (Universal Character Set)

### How many values?

As of Unicode 15.1, there are 157,492 characters in the Unicode Standard

ACII is a subset of Unicode.

- This means everything from ASCII is included in Unicode.

**_Summary:_**

- Unicode can represent more symbols than ASCII but uses more memory due to larger charter encoding.

#### UTF-8 (8-bit Unicode Transformation Format)

- Variable length encoding: Number of bytes per character varies.
  - Most common characters are 1 byte.
  - Can be up to 4 bytes.
- 8-bit ASCII is a subset of UTF-8.
- See: HTML head section of web page.

```html
<meta charset="UTF-8" />
```

#### UTF-16 (16-bit Unicode Transformation Format)

- Fixed length encoding: Always 2 bytes per character.
- Greater efficiency at cost of storage space.
- Necessary for some languages.

#### UTF-32 (32-bit Unicode Transformation Format)

- Fixed length encoding: Always 4 bytes per character.
- Greater effieciency at cost of storage space.
- Necessary for some languages.

### What Kinds of (additional) Characters?

Reference: [https://unicode.org/charts/](https://unicode.org/charts/)

#### Scripts (writing systems)

- Cyrillic
  - А Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я
- Greek
  - Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω
- Armenian
  - Ա Բ Գ Դ Ե Զ Է Ը Թ Ժ Ի Լ Խ Ծ Կ Հ Ձ Ղ Ճ Մ Յ Ն Շ Ո Չ Պ Ջ Ռ Ս Վ Տ Ր Ց Ւ Փ Ք Օ Ֆ
- Hebrew
  - א ב ג ד ה ו ז ח ט י כ ל מ נ ס ע פ צ ק ר ש ת
- Arabic
  - ا ب ت ث ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ف ق ك ل م ن ه و ي
- ...

#### Mathematical symbols

- Greek letters
  - α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω
- Operators
  - - - × ÷ = ≠ < > ≤ ≥ ≈ ≡ ≈ ∞ √ ∑ ∏ ∫ ∂ ∇ ∆ √ ∛ ∜ ∝ ∟ ∠ ∡ °
- Arrows
  - ← → ↑ ↓ ↔ ↕ ↖ ↗ ↘ ↙ ↚ ↛ ↜ ↝ ↞ ↟ ↠ ↡ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↩ ↪ ↫ ↬ ↭ ↮ ↯ ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↺ ↻ ↼ ↽ ↾ ↿ ⇀ ⇁ ⇂ ⇃ ⇄ ⇅ ⇆ ⇇ ⇈ ⇉ ⇊ ⇋ ⇌ ⇍ ⇎ ⇏ ⇐ ⇒ ⇑ ⇓ ⇔ ⇕ ⇖ ⇗ ⇘ ⇙ ⇚ ⇛ ⇜ ⇝ ⇞ ⇟ ⇠ ⇡ ⇢ ⇣ ⇤ ⇥ ⇦ ⇧ ⇨ ⇩ ⇪ ⇫ ⇬ ⇭ ⇮ ⇯ ⇰ ⇱ ⇲ ⇳ ⇴ ⇵ ⇶ ⇷ ⇸ ⇹ ⇺ ⇻ ⇼ ⇽ ⇾ ⇿
- ...

#### Currency

- $ € £ ¥ ¢ ₽ ₩ ₱ ₿ ฿ ₫ ₴ ₸ ₮ ₵ ₲ ₪ ₡

#### Notational Systems

- Braille
  - ⠠ ⠡ ⠢ ⠣ ⠤ ⠥ ⠦ ⠧ ⠨ ⠩ ⠪ ⠫ ⠬ ⠭ ⠮ ⠯ ⠰ ⠱ ⠲ ⠳ ⠴ ⠵ ⠶ ⠷ ⠸ ⠹ ⠺ ⠻ ⠼ ⠽ ⠾ ⠿
- Musical notation
  - ♩ ♪ ♫ ♬ ♭ ♮ ♯
- Alchemy
  - 🜁 🜂 🜃 🜄 🜅 🜆 🜇 🜈 🜉 🜊 🜋 🜌 🜍 🜎 🜏
- Chess
  - ♔ ♕ ♖ ♗ ♘ ♙ ♚ ♛ ♜ ♝ ♞ ♟

#### Emojis

Book of Genesis (per ChatGPT):

🌌🪶🌍🌿🚶‍♂️🚶‍♀️ 🍎🐍👫🚪 🌊🚶‍♂️🚢 🏞️🕊️🍃 🌈🚪🪣🌧️ 👨‍👩‍👧‍👦🌾🐄🐑🐓 🌆🧱🗼 🌍🚪👥🚚 🌄🛏️🌅

### Usage

- An application can display a character only if it can access a font which contains a glyph for the character.
- Very few fonts have full Unicode coverage;

  - If I try to type Egyptian on my PC, it won't work.

- _Windows_: To insert an ASCII character, press and hold down ALT while typing the character code. For example, to insert the degree (º) symbol, press and hold down ALT while typing 0176 on the numeric keypad.

- _Mac_: To insert an ASCII character, press and hold down Option while typing the character code. For example, to insert the degree (º) symbol, press and hold down Option while typing 0176 on the numeric keypad.
- Random Trivia: �
  - "replacement character" (U+FFFD) and is used to indicate problems when a system is unable to render a stream of data to a correct symbol.
