---
layout: base
title: Functions and Modularity
course: SDEV120
---

- [Functions](#functions)
  - [Overview: Why Functions?](#overview-why-functions)
    - [Code Reuse](#code-reuse)
    - [Code Consistency](#code-consistency)
    - [Code Organization](#code-organization)
    - [Code Readability](#code-readability)
    - [Code Testability](#code-testability)
    - [Code Portability](#code-portability)
  - [Anatomy of a Function](#anatomy-of-a-function)
    - [Python Functions](#python-functions)
      - [Calling Functions and Returning Results](#calling-functions-and-returning-results)
      - [Parameter Naming](#parameter-naming)
      - [Void Functions](#void-functions)
  - [The `main` Function](#the-main-function)
  - [Variable Scope](#variable-scope)
    - [Local Scope](#local-scope)
    - [Enclosing Scope](#enclosing-scope)
    - [Global Scope](#global-scope)
  - [Value Passing](#value-passing)
  - [The Call Stack](#the-call-stack)
    - [Stack Data Structure](#stack-data-structure)
    - [Stack Frames](#stack-frames)

# Functions

A **function** is a block of code that is grouped together to perform a specific task.

## Overview: Why Functions?

### Code Reuse

- **Don't Repeat Yourself** (DRY) principle
- Can call a function multiple times instead of copying and pasting code.

### Code Consistency

- One version of a function for all callers.
- Can use the same function in different parts of a program.

### Code Organization

- Break up large programs into smaller, more manageable pieces.
- **Single responsibility principle**: function should have a single, well-defined purpose.

### Code Readability

- Descriptive function names make code self-documenting.
- Usually start with a verb, except for boolean checks.

_Example Function Names_

User input:

- `get_user_input()`
- `get_user_input_as_int()`

Getters and setters:

- `get_account_balance()`
- `update_account_balance()`

Boolean checks:

- `is_user_logged_in()`
- `is_user_admin()`

Data processing:

- `calculate_tax()`
- `filter_items_by_user()`

### Code Testability

- Functions can be automated to checked against expected results (**unit testing**).
- Keeps large programs from becoming unmanageable.

### Code Portability

- Functions can be used by other parts of the same program.
- Functions can be used by different programs.

## Anatomy of a Function

All functions have the following components:

- **Identifier**: The name of the function.
- **Parameters**: Input values that the function uses to perform its task.
- **Return value**: The output of the function.

### Python Functions

- Keyword `def` is used to define a function.
- Function body is indented.
- `return` keyword is used to return a value if a return value is needed.

```python
def function_name(parameter1, parameter2, ...):
    # Function body
    # ...
    return value
```

#### Calling Functions and Returning Results

When we **define** a function in code, it doesn't actually run.

We **call** the function to make it run.

If parameters are specified, these are passed in as **arguments**.

The result of a function is returned using the `return` keyword.

```python
def add_one(x):
    result = x + 1
    return result

# We can capture the result of the function in a variable
result = add_one(5)
```

We can exit a function early by using the `return` keyword.

#### Parameter Naming

The names of the parameters and the names of the arguments do not have to match.

```python
def add(x, y):
    return x + y

first = 5
second = 10
result = add(first, second)
```

#### Void Functions

- Functions that do not return a (useful) value are called **void functions**.
- Do not need a `return` statement.

```python
def print_stuff():
    print("stuff")
```

## The `main` Function

Historically, the entry point of a program is the `main` function. Many languages require a `main` function to be defined.

In Python, the entry point is the first line of the program that is not indented. You don't have to define a `main` function.

You might see this done because it allows you to use the code from one file in another file.

```python
def main():
    print("The main program logic goes in here...")
    # ... rest of program here ...

# >>>>>>>>>> This is the entry point of the program <<<<<<<<<<<<<
if __name__ == "__main__":
    main()
```

## Variable Scope

Because of execution context, variables can have different scopes.

In Python, there are three levels of variable scope:

1. **Local**: Inside a function
2. **Enclosing**: Inside a nested function
3. **Global**: Outside of all functions

### Local Scope

- Variables defined inside a function are local to that function.
- Cannot be accessed outside of the function.

```python
def my_function():
    x = 10
    print(x)

my_function()
print(x)  # NameError: name 'x' is not defined
```

### Enclosing Scope

_Best practice: pass any needed variables as arguments - don't do this._

- Variables defined in an enclosing function are accessible to nested functions.
- Be wary of naming conflicts.
- Changing the value of a variable in a nested scope will not change it in the enclosing scope.

```python
def outer_function():
    x = 10

    def inner_function():
        print(x) # This will grab the x from the enclosing scope

    inner_function() # This works - will print 10
```

### Global Scope

_Best practice: pass any needed variables as arguments - don't do this._

- Variables defined outside of all functions are global.
- Similar to enclosing scope, but at the top level of the program.

```python
x = 10

def my_function():
    print(x)
```

## Value Passing

When you pass a variable to a function, you are passing the value of the variable, not the variable itself.

## The Call Stack

Functions can call other functions, which can call other functions, and so on.

This creates a **call stack**.

- Keeps track of the sequence of function calls in a program
- Is composed of stack frames
- Exists for the lifetime of a program

### Stack Data Structure

LIFO (last in, first out) data structure.

Like stacking blocks on top of each other and picking the top one off when you need it.

### Stack Frames

A stack frame:

- Represents the execution context of a single function call.
- Contains all data relevant to the function call.
- Exists only during the execution of a function call.

These are the "blocks" in our stack analogy.

<figure>
    <span>
        <img src="https://miro.medium.com/v2/resize:fit:720/format:webp/1*3mlXuUDqSmA3tciwlaxUUg.gif" style="">
    </span>
</figure>

A **stack overflow** is when the call stack grows too large, and the program runs out of memory.

```python
## Let's crash the program
def overflow_stack(x):
    print(x)
    overflow_stack(x + 1)

overflow_stack(1)
```
