---
layout: base
title: SQL Prepared Statements
course: SDEV255
---

# SQL Prepared Statements

A **prepared statement** is a used to execute similar SQL statements repeatedly.

## Advantages Over Regular SQL Statements

- **Performance** - Precompiled and optimized by the database engine (saves a few extra steps that DB normally has to do each time).
- **Security** - Immune to SQL injection attacks. Database engine can distinguish between SQL statement and data that the user has provided.
- **Convenience** - Prepared statements can be used to execute the same SQL statement multiple times with different parameters. This means that the application does not need to create a new SQL statement every time it wants to execute the statement.
- **Readability** - Prepared statements can make the application code more readable. This is because the SQL statement is separated from the data that the user has provided.

## Naive Dynamic Query Approach: Concatenation

```php
// Get the user id from the query string
$userid = $_GET['userid'];
$sql = "SELECT * FROM users WHERE userid = $userid";
```

## SQL Injection Attack

A **SQL injection attack** is a code injection technique where SQL statements are submitted as GET or POST values.

```php
// http://example.com?userid=1;DROP TABLE users;
$userid = $_GET['userid'];
// $userid = "1;DROP TABLE users;"
$sql = "SELECT * FROM users WHERE userid = $userid";
```

We should sanitize the input, but also use prepared statements.

## Syntax

```php
// TODO... it's very late.
```
