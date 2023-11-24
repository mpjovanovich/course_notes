---
layout: base
title: Course Notes - SDEV 255 - Include and Require
---

- [What do Include and Require do?](#what-do-include-and-require-do)
- [Why Include and Require?](#why-include-and-require)
- [Include](#include)
- [Require](#require)
- [Include_once](#include_once)
- [Require_once](#require_once)

# What do Include and Require do?

Drop in the contents of another file exactly where the include/require statement is:

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

# Why Include and Require?

- Repeated components on multiple pages.
  - Header
  - Footer
  - Navigation
  - etc.
- Repeated functionality on multiple pages.
  - Form validation
  - Database connection
  - etc.
- Repeated code on multiple pages.
  - Functions
  - Classes
  - etc.

# Include

# Require

# Include_once

# Require_once
