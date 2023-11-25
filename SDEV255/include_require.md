---
layout: base
title: PHP - Include and Require
course: SDEV255
---

- [Include and Require Statements](#include-and-require-statements)
  - [Include](#include)
    - [Example](#example)
  - [Require](#require)
  - [Include vs Require - Which to Use?](#include-vs-require---which-to-use)
- [Include_once and Require_once Statements](#include_once-and-require_once-statements)
  - [Example](#example-1)
  - [Regular vs Once - Which to Use?](#regular-vs-once---which-to-use)
- [Typical Uses](#typical-uses)
  - [Repeated Front End HTML Components](#repeated-front-end-html-components)
  - [Repeated Back End Components](#repeated-back-end-components)
    - [Configuring Global Constants](#configuring-global-constants)
    - [Functions](#functions)
    - [Classes](#classes)
- [PHP Project Structure](#php-project-structure)

# Include and Require Statements

Used to drop in the contents of another file exactly where the include/require statement is.

## Include

- Drops in the included file and continues execution.
- If the file is not found, a warning is issued and execution continues.

```php
include 'header.php';
```

### Example

_header.php_

```php
<?php
<h1>I am the header</h1>
?>
```

_index.php_

```php
<?php
include 'header.php';
?>
<p>I'm some content</p>
```

_output_

```html
<h1>I am the header</h1>
<p>I'm some content</p>
```

## Require

- Drops in the included file and continues execution.
- If the file is not found, a fatal error is issued and execution stops.

```php
require 'header.php';
```

## Include vs Require - Which to Use?

- Use include only if you have a reason to continue execution if the file is not found.
- Otherwise, use require.

# Include_once and Require_once Statements

- Only includes the file once if is included multiple times.

```php
include_once 'header.php';
```

```php
require_once 'header.php';
```

## Example

_header.php_

```php
<?php
<h1>I am the header</h1>
?>
```

_index.php_

```php
<?php
include_once 'header.php';
include_once 'header.php';
include_once 'header.php';
?>
<p>I'm some content</p>
```

_output_

```html
<h1>I am the header</h1>
<p>I'm some content</p>
```

## Regular vs Once - Which to Use?

- Slower than include and require, but only on a scale of milliseconds.
- Prefer these versions unless you have a reason not to.

# Typical Uses

## Repeated Front End HTML Components

- Header
- Footer
- Navigation
- etc.

## Repeated Back End Components

### Configuring Global Constants

- File paths

```php
define('SITE_ROOT', __DIR__);
define('INCLUDES_PATH', SITE_ROOT . 'includes/');
```

- Database connection information

```php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
```

- Debugging information

```php
define('DEBUG', true);
```

- Application settings

```php
define('APP_NAME', 'My Application');
```

### Functions

- Utility functions
  - Date formatting
  - String manipulation
  - Sanatization

### Classes

- Business logic classes
  - User
  - Product
- Utility classes
  - Database connection
  - File upload
  - Email

# PHP Project Structure

Project structure is a matter of preference, but here is a common structure. This is a simplified version of the structure used in the [PHP Project Template](

- root
  - config.php
  - includes
    - functions.php
    - classes.php
  - public
    - index.php
    - about.php
    - contact.php
  - templates
    - header.php
    - footer.php
    - nav.php
  - assets
    - css
    - js
    - images
