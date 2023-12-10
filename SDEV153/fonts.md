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

- Font hosting services store saved copies of fonts for download.
- Fonts may be cached already from other website visits (e.g. Roboto), saving another download.
  - E.g.: [https://fonts.google.com/](https://fonts.google.com/)
    - ```css
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
      ```
    - First two `preconnect` lines are not necessary, but help optimize delivery from google.
  - Fonts may then be used with `font-family` in CSS.
    - ```css
      font-family: 'Nunito', sans-serif;
      ```
  - User may see fallback font initially; once font is downloaded it will "swap" in b/c of the `display=swap` query on the stylesheet fetch.
 
Demo: try popping open the URL that google fonts returns:

https://fonts.googleapis.com/css2?family=Nunito&display=swap

##### Font Weight Considerations

- If different font weights are needed in the site, they must all be requested:

```css
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap">
```

- Variable weight fonts effectively take the place of using multiple font versions, but may not be available.

# Icons via Hosted Service

Just like fonts, icons can be loaded from a web hosted service.

## Sources

- [Font Awesome Icons](https://fontawesome.com/search?m=free&o=r)
- [Google Material Icons](https://fonts.google.com/icons)

## Example

[Headphones Icon...](https://fontawesome.com/icons/headphones?f=classic&s=solid)

<svg xmlns="http://www.w3.org/2000/svg" height="16" width="16" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d="M256 80C149.9 80 62.4 159.4 49.6 262c9.4-3.8 19.6-6 30.4-6c26.5 0 48 21.5 48 48V432c0 26.5-21.5 48-48 48c-44.2 0-80-35.8-80-80V384 336 288C0 146.6 114.6 32 256 32s256 114.6 256 256v48 48 16c0 44.2-35.8 80-80 80c-26.5 0-48-21.5-48-48V304c0-26.5 21.5-48 48-48c10.8 0 21 2.1 30.4 6C449.6 159.4 362.1 80 256 80z"/></svg>

### Via SVG

```html
<svg xmlns="http://www.w3.org/2000/svg" height="16" width="16" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d="M256 80C149.9 80 62.4 159.4 49.6 262c9.4-3.8 19.6-6 30.4-6c26.5 0 48 21.5 48 48V432c0 26.5-21.5 48-48 48c-44.2 0-80-35.8-80-80V384 336 288C0 146.6 114.6 32 256 32s256 114.6 256 256v48 48 16c0 44.2-35.8 80-80 80c-26.5 0-48-21.5-48-48V304c0-26.5 21.5-48 48-48c10.8 0 21 2.1 30.4 6C449.6 159.4 362.1 80 256 80z"/></svg>
```

### Via CSS

#### Font Awesome

- Use latest CDN link to fetch stylesheet:
  - https://cdnjs.com/libraries/font-awesome
  - Pick smallest file that has needed icons
  - Set CSS class for style
  - Set CSS class for icon name

```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/solid.min.css">
<!-- ... ->
<i class="fa-solid fa-headphones"></i>
```

#### Google Materials

- Fetch stylesheet
- Set CSS class for style
- Put icon name in HTML element
  
```html
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- ... ->
<i class="material-symbols-outlined">key</i>
```
