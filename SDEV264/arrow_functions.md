---
layout: base
title: Arrow Functions
course: SDEV264
---

# Arrow Functions

Arrow functions are a shorthand way of writing functions in JavaScript and TypeScript. They are similar to **lambda functions**.

This can be useful when writing a function that is only used once, or writing a function that is very short.

## How to Write an Arrow Function

We can write a standard function as an arrow function by:

- Putting the **function signature** (parameter names / data types, return data type) on the left side of the `=>` operator
- Putting the **function body** on the right side of the `=>` operator
- Assigning the function to a variable

```typescript
const functionName = (param1: dataType, param2: dataType): returnType => {
  // function body
};
```

### Examples

Function with one argument and a return value:

```typescript
// Standard function
function addOne(x: number): number {
  return x + 1;
}

// Arrow function
const addOne = (x: number): number => {
  return x + 1;
};

// Call the function
let result = addOne(5);
```

Function with multiple arguments and a return value:

```typescript
// Standard function
function add(x: number, y: number): number {
  return x + y;
}

// Arrow function
const add = (x: number, y: number): number => {
  return x + y;
};

// Call the function
let result = add(5, 3);
```

Function with no arguments and no return value (void function):

```typescript
// Standard function
function printSomething(): void {
  console.log("I will be printed.");
}

// Arrow function
const printSomething = (): void => {
  console.log("I will be printed.");
};

// Call the function
printSomething();
```
