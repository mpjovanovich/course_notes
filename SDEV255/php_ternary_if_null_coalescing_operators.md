---
layout: base
title: PHP - Ternary If, Null Coalescing
course: SDEV255
---

- [Ternary If](#ternary-if)
- [Null Coalescing](#null-coalescing)
- [Comparison of Techniques](#comparison-of-techniques)

# Ternary If

- **Ternary** = 3 parts
- A shorthand for simple if / else statements.
- Used to assign a value to a variable based on a condition.

```php
$var = (condition) ? value_if_true : value_if_false;
```

This is the same as:

```php
if (condition) {
    $var = value_if_true;
} else {
    $var = value_if_false;
}
```

<p class="demo">Examples</p>

```php
$x = 4;
$even = (x % 2 == 0) ? 'true' : 'false';
echo $even; // true
```

```php
$x = 5;
$even = (x % 2 == 0) ? 'true' : 'false';
echo $even; // false
```

```php
// Skip the variable assignment and just echo the result
$x = 5;
echo (x % 2 == 0) ? 'true' : 'false'; // false
```

# Null Coalescing

- Used to assign a value to a variable if it is not null.
- If variable is null the value after the ?? is assigned.
- Useful when getting values from a form or database that may or may not be present.

<p class="demo">Examples</p>

```php
$userVar = null;
$userVar = $userVar ?? 'default';
echo $userVar; // default
```

```php
$userVar = 'some value';
$userVar = $userVar ?? 'default';
echo $userVar; // some value
```

# Comparison of Techniques

Basic If:

```php
$userVar = null;
if ($userVar === null) {
    $userVar = 'default';
}
```

Ternary If:

```php
$userVar = null;
$userVar = ($userVar === null) ? 'default' : $userVar;
```

Null Coalescing:

```php
$userVar = null;
$userVar = $userVar ?? 'default';
```
