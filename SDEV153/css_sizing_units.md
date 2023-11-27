---
layout: base
title: CSS Size Units
course: SDEV153
---

- [CSS Size Units](#css-size-units)
  - [Screen Units Summary](#screen-units-summary)
  - [Absolute Units](#absolute-units)
    - [Screen Media](#screen-media)
  - [Relative Units](#relative-units)
    - [Fonts and Typography](#fonts-and-typography)
    - [Containers](#containers)

# CSS Size Units

## Screen Units Summary

| `Unit` | Description                                            | Use Case                               | Example                           |
| ------ | ------------------------------------------------------ | -------------------------------------- | --------------------------------- |
| `px`   | Absolute pixels on screen.                             | Fixed-sized elements.                  | `font-size: 16px;`                |
| `%`    | 1% of parent element size.                             | Size relative to parent.               | `width: 50%;`                     |
| `em`   | Font size of element or parent.                        | Size relative to parent.               | `font-size: 2em;`                 |
| `rem`  | Font size of root element.                             | Size relative to root.                 | `font-size: 2rem;`                |
| `ch`   | Width of the "0" character in the element's font.      | Size to line length / character count. | `width: 50ch;`                    |
| `vw`   | 1% of viewport width.                                  | Size relative to container.            | `width: 50vw;`                    |
| `vh`   | 1% of viewport height.                                 | Size relative to container.            | `height: 50vh;`                   |
| `vmin` | 1% of smaller dimension (height or width) of viewport. | Size relative to container.            | `width: 50vmin;`                  |
| `vmax` | 1% of larger dimension (height or width) of viewport.  | Size relative to container.            | `width: 50vmax;`                  |
| `fr`   | Fraction of available space in a grid container.       | Size CSS grid rows/columns.            | `grid-template-columns: 1fr 1fr;` |

## Absolute Units

### Screen Media

- **1pt** = 1/72in.
  - Used in print media.
- **1px** = 1/96in.
  - Used in screen media.

## Relative Units

- Sized as a proportion of something else.
- Useful for responsive design.

### Fonts and Typography

- **1em** = 1x font size of parent element.
- **1rem** = 1x font size of root element.
  - Default is 16px in browsers.
- **line-height** = space between lines of text.
  - Optimal line height is 1.2–1.5em.
  - Leave at unitless value to scale with font size; e.g. `line-height: 1.5;` = 1.5x font size.

### Containers

- **Viewport** units = refer to visible area of browser window.
- **ch** = character advance; width of "0" character in element's font.
  - Optimal line length for body text is 50–75ch.

<p class="demo">Demos:</p>

[Responsive Typography](https://codepen.io/Mike-Jovanovich/pen/wvNxarX)
