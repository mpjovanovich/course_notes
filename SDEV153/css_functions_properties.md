---
layout: base
title: Functions and Properties
course: SDEV153
---

# Functions

<figure>
    <span>
        <img src="https://web.dev/static/learn/css/functions/image/a-diagram-a-function-de-e40ae94dbccc1.svg" style="width: 80%;">
    </span>
    <figcaption>
        <a href="https://web.dev/learn/css/functions">Functions</a>
    </figcaption>
</figure>

- CSS has built-in functions that can be used to manipulate values.

## Common CSS Functions

| Function         | Description                                                           | Example                                  |
| ---------------- | --------------------------------------------------------------------- | ---------------------------------------- |
| `var()`          | Returns a custom property value.                                      | `color: var(--main-color);`              |
| `is()`           | Compares an element's type and/or state to a given value.             | `:is(h1,h2,h3){ /* */ }`                 |
| `not()`          | Compares an element's type and/or state to a given value.             | `:not(p){ /* */ }`                       |
| `min()`          | Returns the minimum value of a list of comma-separated expressions.   | `width: min(100%, 500px);`               |
| `max()`          | Returns the maximum value of a list of comma-separated expressions.   | `width: max(100%, 500px);`               |
| `clamp()`        | Clamps a value between an upper and lower bound.                      | `width: clamp(100px, 50%, 200px);`       |
| `calc()`         | Performs a calculation to determine a value.                          | `width: calc(100% - 20px);`              |
| `repeat()`       | Repeats an argument the requested number of times.                    | `grid-template-columns: repeat(3, 1fr);` |
| `hsl() / hsla()` | Defines colors using the Hue-Saturation-Lightness-Alpha model (HSLA). | `color: hsla(120, 100%, 50%, 0.3);`      |
| `rgb() / rgba()` | Defines colors using the Red-Green-Blue-Alpha model (RGBA).           | `color: rgba(255, 0, 0, 0.3);`           |

## Demos

[CSS clamp() function](https://codepen.io/Mike-Jovanovich/pen/oNmMjZq)

[Custom Variables and Properties](https://codepen.io/Mike-Jovanovich/pen/QWYBjbe)
