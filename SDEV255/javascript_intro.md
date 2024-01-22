---
layout: base
title: Intro to JavaScript
course: SDEV255
---

- [What is JavaScript?](#what-is-javascript)
- [Where do I Write JavaScript?](#where-do-i-write-javascript)
- [The Console and Debugging](#the-console-and-debugging)
  - [Developer Tools and the Console](#developer-tools-and-the-console)
    - [console.log()](#consolelog)
- [Syntax and Basic Concepts](#syntax-and-basic-concepts)
  - [Comments](#comments)
  - [Semicolons](#semicolons)
  - [Curly Braces](#curly-braces)
  - [Conventions](#conventions)
  - [Variables and Constants](#variables-and-constants)
    - [Data Types](#data-types)
    - [Declaration and Scope](#declaration-and-scope)
  - [Strings](#strings)
    - [Concatenation](#concatenation)
    - [Template Literals](#template-literals)
  - [Arrays](#arrays)
  - [If Statements](#if-statements)
  - [Loops](#loops)
    - [While](#while)
    - [For](#for)
    - [Foreach](#foreach)
  - [Functions](#functions)

<figure>
    <span>
        <img src="images/javascript_rotten_child.png" style="">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

# What is JavaScript?

JavaScript is a programming language that runs in the browser.

JavaScript is a **client-side** programming language.

# Where do I Write JavaScript?

Most commonly, JavaScript is written in a separate file and linked the HTML file.

```html
<script src="myScript.js"></script>
```

JavaScript can also be written directly in the HTML file.

```html
<script>
  // JavaScript goes here
</script>
```

For quick demos and testing, JavaScript can be written directly in the browser's console.

# The Console and Debugging

<figure>
    <span>
        <img src="https://www.thecoderpedia.com/wp-content/uploads/2020/06/Programming-Memes-Programmer-while-sleeping.jpg" style="width: 40%;">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

## Developer Tools and the Console

**Developer tools** in browser, hit `F12`.

For playground and exploration:

- Go to "Console"
- Switch to multiline editor mode (book-looking icon)
- You will need to refresh the page to reset any existing variables.

To debug existing code:

- Go to "Debugger"
- Set breakpoints and step through as needed.

### console.log()

Use `console.log()` to print values to the console.

```javascript
const myVariable = "Hello, world!";
console.log(myVariable);
```

# Syntax and Basic Concepts

## Comments

Code that is put in comments will not be executed.

Useful both for documentation and debugging, "commenting out code".

```javascript
/*
This is a multi-line comment.
So many lines!
Whoa!
*/

// This is a single-line comment.
```

## Semicolons

<figure>
    <span>
        <img src="https://www.thecoderpedia.com/wp-content/uploads/2020/06/Programming-Memes-Java-Jokes-768x935.jpg" style="width: 40%">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

Javascript is a semicolon-terminated language. They are required after every statement.

```javascript
let x = 5;
let y = 6;
let z = x + y;
```

But... if you don't use them JS will try to add them for you when the code runs.

This is called **automatic semicolon insertion (ASI)**.

**_Prof note:_** my code editor (VS Code) will not let me omit semicolons in the notes, so we'll demo this without semicolons in class.

**Takeaway**: Always use semicolons. Don't rely on ASI.

## Curly Braces

JavaScript uses curly braces to denote blocks of code.

(Unlike Python, which uses indentation.)

```javascript
// This is an arbitrary block of code just to prove the point.
// We're normally talking about if statements, loops, functions, etc.
{
  let x = 5;
}
print(x); // Error: x is not defined
```

## Conventions

See [Google's JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)

No hard rules, but there are some common conventions. Usually:

- camelCase for variable and function names.
- All caps for constants.
- Two spaces for indentation.
- The `{` goes on the same line as the block that it belongs with.
- 80 character line limit before wrapping.

A **linter** is a tool that analyzes your code and reports any errors or warnings.

Consider using a linter to help you follow conventions.

## Variables and Constants

### Data Types

JavaScript is a dynamically typed language.

- Don't declare variable types.
- Variables can be reassigned to different data types.

```javascript
let x = 5;
x = "Hello, world!";
```

Some common data types:

- `string`
- `number`
- `boolean`
- `undefined`
- `object`

### Declaration and Scope

In modern JS, variables are declared with `let` or `const`.

- `const` is used for values that will not change.
- `let` is used for values that will change.

```javascript
const PI = 3.14;
let r = 5;
let area = PI * r * r;
```

In older JS you may see `var` used instead of `let`. `var` is function-scoped, while `let` is block-scoped.

```javascript
var x = 5;
if (true) {
  var x = 10;
}
console.log(x); // 10
```

```javascript
let x = 5;
if (true) {
  let x = 10;
}
console.log(x); // 5
```

**Takeaway:** Use `const` for values that will not change, and `let` for values that will change.

## Strings

### Concatenation

```javascript
let firstName = "John";
let lastName = "Doe";
let fullName = firstName + " " + lastName;
```

### Template Literals

**Template literals** are string literals that allow embedded expressions via interpolation.

**String interpolation** is where a string literal contains one or more placeholders which can have expressions embedded in them.

Use backticks, dollar sign, and curly braces to interpolate variables into strings.

```javascript
let firstName = "John";
let lastName = "Doe";
let fullName = `${firstName} ${lastName}`;
```

We can put any valid JavaScript expression inside the curly braces.

```javascript
let price = 5.99;
let quantity = 10;
let total = `The total is $${price * quantity}`;
```

## Arrays

```javascript
let myArray = ["Bingo", "Rolly", "Spot"];
```

## If Statements

If, else if, else:

```javascript
if (condition1) {
  // code to be executed if condition1 is true
} else if (condition2) {
  // code to be executed if condition1 is false and condition2 is true
} else {
  // code to be executed if both condition1 and condition2 are false
}
```

## Loops

### While

```javascript
let i = 0;
while (i < 10) {
  console.log(i);
  i++;
}
```

### For

```javascript
for (let i = 0; i < 10; i++) {
  console.log(i);
}
```

### Foreach

```javascript
let myArray = ["Bingo", "Rolly", "Spot"];
myArray.forEach((item) => {
  console.log(item);
});
```

## Functions

Basic function syntax:

```javascript
function myFunction() {
  // code to be executed
}
```

With arguments:

```javascript
function myFunction(arg1, arg2) {
  // code to be executed
}
```

With return value:

```javascript
function myFunction(arg1, arg2) {
  returnValue = arg1 + arg2;
  return returnValue;
}
```
