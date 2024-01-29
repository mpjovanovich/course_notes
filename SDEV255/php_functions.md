---
layout: base
title: PHP - Functions
course: SDEV255
---

- [Functions](#functions)
  - [Strict Types](#strict-types)
  - [Parts of a Function](#parts-of-a-function)
  - [Basic syntax](#basic-syntax)
  - [Variable Scope](#variable-scope)

# Functions

## Strict Types

- We should enable **strict types** to make PHP behave more like a strongly typed language.
- Makes sure that the data types of parameters and return values are enforced.
- Must be the first line of the file.

```php
<?php
declare(strict_types=1);
// ... your code ...
?>
```

## Parts of a Function

- Identifier
  - The name of the function
- Parameters
  - Zero or more variables passed to the function
  - Each parameter has a data type (optionally enforced with strict types)
- Return value
  - The value the function returns
  - Has a data type.
  - May be void (no return value). Don't need a return statement if so.

## Basic syntax

```php
<?php
function functionName(datatype $param1, datatype $param2, ...) : return_datatype
{
    // function body
    return $value;
}
?>
```

## Variable Scope

- Variables declared inside a function are **local** to that function.
- They do not exist outside the function.

```php
<?php
function myFunction() : void
{
    $localVariable = "I'm local!";
    echo $localVariable;
}
myFunction();
echo $localVariable; // Error!
?>
```

- Variables declared outside a function are **global**.
- They can be accessed inside a function, but can only be modified with the `global` keyword.

```php
<?php
$globalVariable = 1;
function myFunction() : void
{
     // Required to modify...
    global $globalVariable;

    $globalVariable += 1;
    echo $globalVariable;
}
myFunction();
?>
```

- Global variables have very specific uses.
- Generally, you should prefer passing parameters to functions.
