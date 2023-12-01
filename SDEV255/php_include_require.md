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
- [Include\_once and Require\_once Statements](#include_once-and-require_once-statements)
  - [Example](#example-1)
  - [Regular vs Once - Which to Use?](#regular-vs-once---which-to-use)
- [Typical Uses](#typical-uses)
  - [Repeated Front End HTML Components](#repeated-front-end-html-components)
  - [Repeated Back End Components](#repeated-back-end-components)
    - [Configuring Global Constants](#configuring-global-constants)
    - [Functions](#functions)
    - [Classes](#classes)
- [PHP Project Structure](#php-project-structure)
- [Friendly Output for Debugging](#friendly-output-for-debugging)

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
<h1>I am the header</h1>
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

# Friendly Output for Debugging

- Functions like `print_r()`, `var_export()` and `var_dump()` are great for debugging.
- It can be helpful to wrap them in a function cleans up the output:
- You can put this in a `functions.php` file and include it in your scripts.

```php
<?php
function pretty_dump(mixed $var, string $name = ''): void
{
    $short_type_names = [
        'boolean' => 'bool',
        'integer' => 'int',
        'double' => 'float',
        'string' => 'str',
    ];

    // Style CSS to your liking
    echo '
<pre style="
        background-color:#f5f5f5;
        color:#333;
		line-height:1.2;
        font-size:14px;
        padding:10px;
        margin:10px;
        border-radius:5px;
        border:1px solid #ddd;
        min-width:600px;
		max-width:960px;
		width:fit-content;
		overflow:auto;
		box-sizing:border-box;
    ">';
    if ($name) {
        echo "Name: <strong>$name</strong><br >";
    }
    echo "Type: <strong>" . gettype($var) . (is_array($var) ? '(' . count($var) . ')' : '')  . "</strong><br >";
    echo ".................................<br >";
    if (is_array($var)) {
        foreach ($var as $k => $v) {
            if (is_array($v)) {
                echo str_pad($k, 30) . " => ";
                pretty_dump($v);
            } else {
                // Use short type names
                $type = $short_type_names[gettype($v)] ?? gettype($v);

                // If boolean value, show true/false instead of 1/0
                $v = $type === 'bool' ? ($v ? 'true' : 'false') : $v;

                // If string value, show it in quotes
                $v = $type === 'str' ? "'$v'" : $v;

                echo str_pad($k, 30) . ' => ' . $type . ' ' . $v . "\n";
            }
        }
    } else {
        print_r($var);
    }
    echo '</pre>';
}

// Usage:
pretty_dump($_SERVER, '$_SERVER');
```
