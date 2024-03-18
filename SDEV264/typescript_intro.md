---
layout: base
title: Intro to TypeScript
course: SDEV264
---

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

The transpiler will still infer types if you don't specify them, but you cannot change the type of a variable after it has been declared.

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
