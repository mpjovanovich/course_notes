---
layout: base
title: Home
course: SDEV255
---

# Announcements

![Empty](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1DRSnSPeoqsbaeBITkzKYK8rwadli-d-JcuREzOwcnx8-Zby_iVfQxargkOG1yv45TWg&usqp=CAU)

- Final Exam
  - 0 pts
  - Review session
  - Attendance based
  - Grade for course pass/fail contingent on taking final
- PHP Dev community says: "/" works as well as DIRECTORY_SEPARATOR for modern PHP (sometimes better)
- Quick walkthrough of XSRF token
- Rethrow error in exception handler

```php
} catch (PDOException $e) {
    // Handle connection errors...
    // Only show message and code, not sensitive information
    throw new PDOException($e->getMessage(), $e->getCode());
}
```

# TOC

- [Announcements](#announcements)
- [TOC](#toc)
- [Old Lecture Schedule](#old-lecture-schedule)
- [New Lecture Schedule](#new-lecture-schedule)
  - [Module 04](#module-04)
    - [Day 1](#day-1)
    - [Day 2](#day-2)
  - [Module 05](#module-05)
    - [Day 1](#day-1-1)
  - [Mystery Zone](#mystery-zone)
    - [12/7](#127)
    - [12/12](#1212)
    - [12/14](#1214)

# Old Lecture Schedule

[M02: JS Part II: form validation; event listeners; objects, properties, and methods; JSON; AJAX](m02.md)

[M03: PHP: Variables; Arrays; Control structures; Objects; HTML Integration](m03.md)

# New Lecture Schedule

## Module 04

### Day 1

[PHP: Exception Handling](php_exception_handling.md)

[HTTP Headers](php_http_headers.md)

[HTTP Status Codes](php_http_status_codes.md)

[PHP: Include and Require](php_include_require.md)

[PHP: Ternary If and Null Coalescing Operators](php_ternary_if_null_coalescing_operators.md)

### Day 2

[HTML Forms](../common/html_forms.md)

[PHP: Super Global Arrays](php_superglobal_arrays.md)

[PHP: Using GET](php_GET.md)

[PHP: Input Validation](php_input_validation.md)

[PHP: Input Sanitization](php_input_sanitization.md)

## Module 05

### Day 1

[PHP: Using POST](php_POST.md)

[PHP: Filter Functions](php_filter_functions.md)

## Mystery Zone

### 12/7

Database day 1 - Basic SQL

### 12/12

Database day 2 - Advanced SQL

- Relational databases
- Modeling data
- Entity Relationship Diagrams
- Joins
  - Handling NULLs
  - COALESCE, p420
  - Inner vs outer joins
- Creating tables
  - CREATE TABLE
  - DROP TABLE
  - DESCRIBE
  - Constraints
- Prepared statements, p448
  - Why?
    - Security; SQL injection
    - Performance
  - ch12, pdo-function-with-parameters.php

...

- Organizing a PHP project with database connection
- Object relational mapping
- PHP object storage

### 12/14

- Lab continued
- Final exam (review of course)
