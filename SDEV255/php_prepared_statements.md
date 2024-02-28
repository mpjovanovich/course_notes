---
layout: base
title: SQL Prepared Statements
course: SDEV255
---

- [SQL Prepared Statements](#sql-prepared-statements)
  - [Advantages Over Regular SQL Statements](#advantages-over-regular-sql-statements)
  - [Naive Dynamic Query Approach: Concatenation](#naive-dynamic-query-approach-concatenation)
  - [SQL Injection Attack](#sql-injection-attack)
  - [PHP Prepared Statement Syntax](#php-prepared-statement-syntax)
    - [Example Insert](#example-insert)
    - [Example Update](#example-update)
    - [Example Delete](#example-delete)

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

## PHP Prepared Statement Syntax

**Single Parameter Binding**

```php
$user_id = 1;

// Create the SQL. :userid is a placeholder
$sql = "SELECT * FROM users WHERE userid = :userid";

// $db is our PDO connection object.
// It has methods on it to prepare statements.
$stmt = $db->prepare($sql);

// Bind the parameter to the placeholder
// Use a PDO constant to specify the data type for the third argument for safety
$stmt->bindParam(':userid', $user_id, PDO::PARAM_INT);

// Execute the statement
$stmt->execute();

// Fetch the results
$results = $stmt->fetchAll();
```

**Multiple Parameter Binding**

```php
// ...
$sql = "SELECT * FROM users WHERE category_id = :category_id AND price <= :price";
$stmt = $db->prepare($sql);
$stmt->bindParam(':category_id', $category_id, PDO::PARAM_INT);
$stmt->bindParam(':price', $price, PDO::PARAM_FLOAT);
$stmt->execute();
// No need to fetch results if we're doing an insert, update, or delete
```

### Example Insert

```php
// ...
$sql = "INSERT INTO users (username, title) VALUES (:username, :title)";
$stmt = $db->prepare($sql);
$stmt->bindParam(':username', $username, PDO::PARAM_STR);
$stmt->bindParam(':title', $title, PDO::PARAM_STR);
$stmt->execute();
```

### Example Update

```php
// ...
$sql = "UPDATE users SET username = :username, title = :title WHERE userid = :userid";
$stmt = $db->prepare($sql);
$stmt->bindParam(':username', $username, PDO::PARAM_STR);
$stmt->bindParam(':title', $title, PDO::PARAM_STR);
$stmt->bindParam(':userid', $userid, PDO::PARAM_INT);
$stmt->execute();
```

### Example Delete

```php
// ...
$sql = "DELETE FROM users WHERE userid = :userid";
$stmt = $db->prepare($sql);
$stmt->bindParam(':userid', $userid, PDO::PARAM_INT);
```
