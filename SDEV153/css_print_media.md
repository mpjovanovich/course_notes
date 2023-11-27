---
layout: base
title: CSS Print Media
course: SDEV153
---

- [CSS for Print Media](#css-for-print-media)
  - [Common Print Units](#common-print-units)
  - [CSS Print Media Rule](#css-print-media-rule)

# CSS for Print Media

- CSS can be used to style the printed version of a web page.
- Use absolute units for print media.
- Might be used to:
  - Simplify layout (make it simple).
  - Change units to absolute size (e.g. font).
  - Make print-friendly colors.
  - Add page breaks.
  - Add page numbers.
  - Add date, URL, access information.

<p class="demo">Tip:</p>

You can view the result via Print Preview in the browser.

## Common Print Units

| Unit | Description | Size         | Common Use |
| ---- | ----------- | ------------ | ---------- |
| px   | Pixel       | 1/96in       | Font size  |
| pt   | Point       | 1/72in       | Font size  |
| pc   | Pica        | 12pt = 1/6in | Font size  |
| in   | Inch        | -            | Page size  |
| cm   | Centimeter  | -            | Page size  |
| mm   | Millimeter  | -            | Page size  |

## CSS Print Media Rule

- Print styling is done by using the `@media print` rule:

```css
@media print {
  @page {
    margin: 1in;
  }

  /* Make the font fit better, and better colors... */
  body {
    font-size: 10pt;
    background-color: white;
    color: black;
  }

  /* Avoid messy page breaks... */
  h1,
  h2,
  h3 {
    page-break-after: avoid;
  }

  h2,
  h3,
  .newSection {
    page-break-before: always;
  }

  /* Take care of orphans and widows... */
  /* Orphans = first line of paragraph left behind on a page break */
  /* Widows = last line of paragraph left behind on a page break */
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
}
```
