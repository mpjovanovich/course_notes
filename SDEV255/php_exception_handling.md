---
layout: base
title: PHP - Exception Handling
course: SDEV255
---

- [Exception Handling](#exception-handling)
  - [Why Use Exception Handling?](#why-use-exception-handling)
  - [How it Works](#how-it-works)
  - [The Exception Object](#the-exception-object)
    - [Properties and Methods](#properties-and-methods)
    - [Exception Types](#exception-types)
  - [Exception Bubbling](#exception-bubbling)
  - [Validation vs Exception Handling](#validation-vs-exception-handling)

# Exception Handling

Used to handle errors that occur during execution of a script.

## Why Use Exception Handling?

Allows you to handle errors

- Gracefully
- Consistently
- In a controlled location
- In a way that is appropriate for the situation.

## How it Works

- When an error occurs, an exception is **thrown**.
- If wrapped in a **try** block, the code will pass execution to the **catch** block.
- If not, the script will terminate with an error.

```php
try {
  // Code that may throw an exception
} catch (Exception $e) {
  // Code to handle the exception if thrown
}
finally {
  // Optional: Will execute regardless of exception thrown or not
}
```

- The **catch** block will only execute if an exception is thrown.
- The **finally** block will always execute.
  - This is optional.
- After the try / catch / finally block, execution will continue as normal.

## The Exception Object

### Properties and Methods

- Information about the exception can be accessed through the exception object.

| Method             | Description                                               |
| ------------------ | --------------------------------------------------------- |
| getMessage()       | Returns the exception message as a string                 |
| getCode()          | Returns the exception code as an integer                  |
| getFile()          | Returns the filename in which the exception was thrown    |
| getLine()          | Returns the line number on which the exception was thrown |
| getTrace()         | Returns an array of the backtrace()                       |
| getTraceAsString() | Returns the backtrace() as a string                       |

```php
try {
  // Code that may throw an exception
} catch (Exception $e) {
  echo $e->getMessage();
}
```

### Exception Types

- PHP has built-in exception types.
- We can create custom exception types.
- We can use multiple catch blocks to handle different exception types for greater specificity.
- The base class `Exception` should be the last catch block.

```php
try {
    // Code that may throw an exception
} catch (FileNotFoundException $e) {
    // Will only execute if the exception type is FileNotFoundException
} catch (Exception $e) {
    // Will catch anything else that is thrown.
}
```

## Exception Bubbling

- Uncaught exceptions will **bubble up** to the calling function.
- They will proceed through the **stack** until they are caught or the script terminates.

```php
function bar() {
  throw new Exception('I am an exception');
}

function foo() {
  try {
    bar();
  } catch (Exception $e) {
    // Will catch the exception thrown by bar()
    echo $e->getMessage();
  }
}
```

## Validation vs Exception Handling

- Validation is used to **prevent** errors.
  - Checking user input
  - Checking for file existence before opening.
  - ...
- Exception handling is used to handle errors that occur **despite validation**.
  - File is deleted while in use
  - Database connection is lost
  - Network timeout
  - Out of memory if reading a large file
  - ...
