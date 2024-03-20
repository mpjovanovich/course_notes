---
layout: base
title: First Class Functions
course: SDEV264
---

- [First Class Functions](#first-class-functions)
  - [Example: Passing a function as an argument](#example-passing-a-function-as-an-argument)
  - [Example: Passing a function that takes an argument](#example-passing-a-function-that-takes-an-argument)
  - [Example: Using arrow functions](#example-using-arrow-functions)

# First Class Functions

The term **first class functions** refers to the ability to treat functions as values. This means that you can pass functions as arguments to other functions, return functions from other functions, and assign functions to variables.

## Example: Passing a function as an argument

```typescript
// We don't call this directly. Instead, we pass it as an argument to callOtherFunction.
function printSomething(): void {
  console.log("I will be printed.");
}

// This function expects a function as an argument. It then calls that function.
function callOtherFunction(outputFunc: () => void): void {
  outputFunc();
}

// Now we call the outer function, passing the inner function as an argument.
// Note that we do not use parentheses when passing the function as an argument,
// because we are not calling it directly. We are just passing a reference to it.
callOtherFunction(printSomething);
```

## Example: Passing a function that takes an argument

This example does the same as above, but the function that is passed as an argument now takes a string argument.

We then call the function twice, passing a different string each time.

```typescript
function printSomething(thingToPrint: string): void {
  console.log(thingToPrint);
}

function callOtherFunction(outputFunc: (string) => void): void {
  let message = "I will be printed.";
  outputFunc(message);
  message = "I will be printed again.";
  outputFunc(message);
}

callOtherFunction(printSomething);
```

## Example: Using arrow functions

This example does the same as the above; we have just rewritten `printSomething` and `callOtherFunction` using arrow functions.

```typescript
const printSomething = (thingToPrint: string): void => {
  console.log(thingToPrint);
};

const callOtherFunction = (outputFunc: (string) => void): void => {
  let message = "I will be printed.";
  outputFunc(message);
  message = "I will be printed again.";
  outputFunc(message);
};

callOtherFunction(printSomething);
```
