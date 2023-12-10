---
layout: base
title: Fonts
course: SDEV255
---

# Fonts

## Font Families

CSS `font-family` is used to define the name(s) of fonts to be used on the website. 

### Defaults

- A font must exists on the user's device in order to be used.
- Browser will use "User Agent Stylesheet" if no CSS rule set.
- Multiple fonts may be listed for font-family using a **font stack**.
  - Goes through list left to right until font is found.
  - Traditionally use [Web Safe Fonts](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Fundamentals#web_safe_fonts) to ensure availability.
  - ```css
    font-family: Helvetica, "Trebuchet MS", Verdana, sans-serif;
    ```

#### Serif

- Serif fonts have small strokes at the edges of letters.
- "Curly" letters.
- Font-family value of `serif` signifies that the device should use the system-defined default serif font.

#### Sans-Serif

- Sans-serif fonts have no strokes at the edges of letters.
- Sans = "without"
- "Block" letters.
- Font-family value of `sans-serif` signifies that the device should use the system-defined default serif font. 

## Web Fonts

- Fonts may be loaded from the web server or an external url using `@font-face`.
- Specified font file(s) are downloaded:

```css
@font-face {
  font-family: Roboto;
  src: url('/fonts/roboto-regular.woff2');
}
body {
  font-family: Roboto, sans-serif;
}
```

### Import vs Link

#### @import

- Goes in CSS file.
- Must be at beginning of file.
- Imported stylesheet; browser fetches with web request after initial stylesheet is loaded.

#### \<link\>

- Goes in \<head\> of HTML.
- Fetched with web request as part of initial page load.
- Recommended 

### Local vs Web Hosted

#### Local Fonts

- url points to file file that developer has uploaded to site.

#### Online Font Service

...
