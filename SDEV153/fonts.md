---
layout: base
title: Fonts
course: SDEV255
---

# Web Fonts

## Defaults

- A font must exists on the user's device in order to be used.
- Browser will use "User Agent Stylesheet" if no CSS rule set.
- Multiple fonts may be listed for font-family using a **font stack**.
  - Goes through list left to right until font is found.
  - Traditionally use [Web Safe Fonts](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Fundamentals#web_safe_fonts) to ensure availability.
  - ```css
    font-family: Helvetica, "Trebuchet MS", Verdana, sans-serif;
    ```

### Serif

- Serif fonts have small strokes at the edges of letters.
- "Curly" letters.
- Font-family value of `serif` signifies that the device should use the system-defined default serif font.

### Sans-Serif

- Sans-serif fonts have no strokes at the edges of letters.
- Sans = "without"
- "Block" letters.
- Font-family value of `sans-serif` signifies that the device should use the system-defined default serif font. 
