---
layout: base
title: PHP - Input Validation
course: SDEV255
---

- [Input Validation](#input-validation)
  - [Presence Checks](#presence-checks)
    - [Truthy and Falsy](#truthy-and-falsy)
    - [Built in Functions](#built-in-functions)
    - [Comparison of Functions](#comparison-of-functions)
  - [Data Type Checks](#data-type-checks)
  - [Value Checks](#value-checks)
  - [Regular Expression Checks](#regular-expression-checks)

# Input Validation

## Presence Checks

### Truthy and Falsy

- When put into an if statement, variables are cast to boolean.
- This concept is called "truthy" and "falsy".

```php
<?php
$var = '';
if ($var) {
    echo 'true';
} else {
    echo 'false';
}
```

### Built in Functions

| Function             | Returns true if                   |
| -------------------- | --------------------------------- |
| `isset()`            | Variable exists and is not `null` |
| `empty()`            | Variable exists and != false      |
| `is_null()`          | Variable is `null`                |
| `array_key_exists()` | Key exists in the array           |

```php
if (isset($_GET['name'])) {
    // do something
}
```

### Comparison of Functions

| Value     | `truthy` | `isset()` | `empty()` | `is_null()` |
| --------- | -------- | --------- | --------- | ----------- |
| `false`   | false    | true      | true      | false       |
| `true`    | true     | true      | false     | false       |
| `null`    | false    | false     | true      | true        |
| `''`      | false    | true      | true      | false       |
| `'abc'`   | true     | true      | false     | false       |
| `'0'`     | false    | true      | true      | false       |
| `'1'`     | true     | true      | false     | false       |
| `0`       | false    | true      | true      | false       |
| `1`       | true     | true      | false     | false       |
| `[]`      | false    | true      | true      | false       |
| `[1,2,3]` | true     | true      | false     | false       |

## Data Type Checks

- `is_string()`
- `is_numeric()`
- `is_int()`
- `is_float()`
- `is_bool()`
- `is_array()`

```php
<?php
if (is_array($_GET['items'])) {
    // do something
}
?>
```

## Value Checks

- `==` - check if two values are equal
- `===` - check if two values are equal and of the same type
- `array_key_exists()` - check if a key exists in an array
- `in_array()` - check if a value exists in an array
- `ctype_digit()` - check if a string contains only digits
- `ctype_alpha()` - check if a string contains only letters
- `ctype_alnum()` - check if a string contains only letters and digits

```php
<?php
if (in_array($_GET['color'], ['red', 'green', 'blue'])) {
    // do something
}
?>
```

## Regular Expression Checks

- `preg_match()` - check if a string matches a pattern
- `preg_match_all()` - check if a string matches a pattern multiple times
- `preg_replace()` - replace a pattern in a string

```php
<?php
if (preg_match('/^[a-zA-Z0-9]+$/', $_GET['username'])) {
    // do something
}
?>
```
