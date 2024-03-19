---
layout: base
title: Intro to TypeScript
course: SDEV264
---

- [TypeScript](#typescript)
  - [Why might I uses over plain JS?](#why-might-i-uses-over-plain-js)
  - [Any Reason to still use JS then?](#any-reason-to-still-use-js-then)
  - [Syntax](#syntax)
    - [Type Annotations](#type-annotations)
    - [Functions](#functions)
  - [TypeScript Compiler](#typescript-compiler)
  - [Example App](#example-app)

# TypeScript

- TypeScript is a **superset** of JavaScript
- Adds **static typing** to the language.

## Why might I uses over plain JS?

- Can check for errors at compile time (before running the code)
- Better tooling support
- Easier to read and understand code
- Easier to maintain code
- Easier to refactor code
- Easier to write tests

## Any Reason to still use JS then?

Yes, there are still reasons to use JavaScript:

- Fast to write.
- Easy to learn, get started.
- Great for small projects.

## Syntax

### Type Annotations

```typescript
let message: string = "Oh hello there!";
let count: number = 5;
let isTrue: boolean = true;
```

// The transpiler will still infer types if you don't specify them, but you
// cannot change the type of a variable after it has been declared.

```typescript
let message = "Oh hello there!";
let count = 5;
let isTrue = true;
```

### Functions

```typescript
function add(x: number, y: number): number {
  return x + y;
}
```

## TypeScript Compiler

- The TypeScript compiler is called `tsc`.
- It compiles TypeScript code to JavaScript code.
- It can be installed with npm.

```bash
npm install -g typescript
```

To compile a file:

```bash
tsc myFile.ts
```

## Example App

```html
<!DOCTYPE html>
<html>
  <head>
    <title>TS_Demo</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script src="app.js" defer></script>
  </head>
  <body>
    <h1>TS Demo</h1>
    <p>I'm p1!</p>
    <p>I'm p2!</p>
    <p>I'm p3!</p>
    <p>I'm p4!</p>
    <p>I'm p5!</p>
    <button id="btnClick">Click me!</button>
  </body>
</html>
```

```typescript
let cur_color: number = 0;
const colors: string[] = [
  "red",
  "green",
  "blue",
  "orange",
  "purple",
  "teal",
  "pink",
];

// Whenever the button is clicked, do this function...
document.getElementById("btnClick")?.addEventListener("click", () => {
  // Get all of the paragraph elements, and for each one...
  document.querySelectorAll("p").forEach((p) => {
    // Change the color of the text to the next color in the array
    p.style.color = colors[cur_color];

    // Increment the color index, and if it's at the end of the array, reset it to 0
    cur_color = (cur_color + 1) % colors.length;
  });
});
```
