---
layout: base
title: PHP - Filter Functions
course: SDEV255
---

- [PHP Filter Functions](#php-filter-functions)
    - [Validate Filters](#validate-filters)
    - [Sanitize Filters](#sanitize-filters)
    - [Filtering a Single Value](#filtering-a-single-value)
    - [Sanitizing a Single Value](#sanitizing-a-single-value)
    - [Filter Flags and Options](#filter-flags-and-options)
    - [Filtering a Single Value with Options](#filtering-a-single-value-with-options)
    - [Filtering Multiple Values](#filtering-multiple-values)
    - [Demos - Complete Form Validation with Filters](#demos---complete-form-validation-with-filters)

# PHP Filter Functions

PHP has built-in functions for validating and sanitizing user input.

### Validate Filters

Validate filters are used to validate input.

See [PHP: Validate filters](https://www.php.net/manual/en/filter.filters.validate.php)

### Sanitize Filters

Sanitize filters are used to remove unwanted characters.

See [PHP: Sanitize filters](https://www.php.net/manual/en/filter.filters.sanitize.php)

### Filtering a Single Value

```php
// Will return false if value is not valid
$email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
```

### Sanitizing a Single Value

```php
// Same effect as htmlspecialchars() with ENT_QUOTES flag
$filtered = filter_input(INPUT_POST, 'val', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
```

### Filter Flags and Options

- Filter flags and options are used to specify how the filter should behave.
- Flags are predefined constants that can be combined using the bitwise OR operator `|`.
- Options are key/value pairs that are passed in an associative array.
- See [PHP: Filter Flags](https://www.php.net/manual/en/filter.filters.flags.php)

### Filtering a Single Value with Options

```php
// Build options array
$settings['flags']                = FILTER_FLAG_ALLOW_HEX;       // Allow hex flag
$settings['options']['default']   = 0;                           // Default value
$settings['options']['min_range'] = 0;                           // Min number option
$settings['options']['max_range'] = 255;                         // Max number option

// Will return false if value is not between 0 and 255
$number = filter_input(INPUT_POST, 'number', FILTER_VALIDATE_INT, $settings);
```

### Filtering Multiple Values

- We often want to filter multiple values at once, as in the case of a form submission.

```html
<form action="process.php" method="post">
  <input type="text" name="email" />
  <input type="text" name="age" />
  <input type="checkbox" name="terms" />
  <input type="submit" />
</form>
```

```php
// Build filters array
$filters['email']                       = FILTER_VALIDATE_EMAIL;   // Email filter
$filters['age']['filter']               = FILTER_VALIDATE_INT;     // Integer filter
$filters['age']['options']['min_range'] = 16;                      // Min age
$filters['terms']                       = FILTER_VALIDATE_BOOLEAN; // Boolean filter

$form = filter_input_array(INPUT_POST, $filters);                  // Apply filters
var_dump($form);                                                   // Display results
```

### Demos - Complete Form Validation with Filters

Replaced with lab...

<p class="demo">Walkthrough</p>

[Complete Form Validation](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV255_Web_Application_Development/form_filters_demo/form_filters_demo.php)
