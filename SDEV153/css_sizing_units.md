---
layout: base
title: CSS Size Units
course: SDEV153
---

# CSS Size Units

## Summary

| Unit | Abs/Rel  | Description                                    | Example            |
| ---- | -------- | ---------------------------------------------- | ------------------ |
| px   | Absolute | Pixels                                         | `font-size: 16px;` |
| em   | Relative | Relative to the font size of the element       | `font-size: 2em;`  |
| rem  | Relative | Relative to the font size of the root element  | `font-size: 2rem;` |
| %    | Relative | Relative to the parent element                 | `width: 50%;`      |
| vw   | Relative | Relative to 1% of the width of the viewport    | `width: 50vw;`     |
| vh   | Relative | Relative to 1% of the height of the viewport   | `height: 50vh;`    |
| vmin | Relative | Relative to 1% of viewport's smaller dimension | `width: 50vmin;`   |
| vmax | Relative | Relative to 1% of viewport's larger dimension  | `width: 50vmax;`   |

## Absolute Units

## Relative Units

## Print and Non-screen Media

### Print Media

- CSS can be used to style the printed version of a web page.
- This is done by using the `@media print` rule.
- Might be used to:
  - Change layout (make it simple).
  - Change the font size.
  - Change colors.
  - Add page breaks.
  - Add page numbers.
  - Add date, URL, access information.
- Units may be specified in:
  - points (`pt`),
  - picas (`pc`)
  - inches (`in`)
  - centimeters (`cm`)
  - millimeters (`mm`)

```css
@media print {
  body {
    font-size: 12pt;
  }
}
```

A separate stylesheet may be used for print media:

```html
<link rel="stylesheet" href="print.css" media="print" />
```

### Other Non-screen Media
