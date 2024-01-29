---
layout: base
title: PHP - Intro
course: SDEV255
---

- [PHP: Intro](#php-intro)
- [Syntax](#syntax)
  - [Printing Output](#printing-output)
  - [PHP Variable Naming Conventions](#php-variable-naming-conventions)
- [Basic Data Types](#basic-data-types)
  - [Type Casting](#type-casting)
  - [Strings](#strings)
  - [String Concatenation](#string-concatenation)
  - [Common String Functions](#common-string-functions)
  - [Arrays](#arrays)
  - [Indexed Arrays](#indexed-arrays)
  - [Associative Arrays](#associative-arrays)
    - [Array Functions](#array-functions)
- [Embedding PHP in HTML](#embedding-php-in-html)
  - [Shorthand Echo](#shorthand-echo)
- [Configuration](#configuration)
  - [php.ini](#phpini)
    - [Things we Might Change](#things-we-might-change)
  - [Displaying phpinfo()](#displaying-phpinfo)

# PHP: Intro

PHP allows us to create **dynamic web pages**.

- Account logins
- Shopping carts
- Database access
- Content management systems
- Search and filter
- ... many more ...

PHP can be embedded in HTML files or a file can have exclusively PHP.

PHP files end with the `.php` extension.

# Syntax

- Code is enclosed in `<?php` and `?>` tags.
- Statements end with a semicolon, `;`.
- PHP is case-sensitive.
- If a file has only PHP code, it is recommended to omit the closing `?>` tag.
  - [PHP tags](https://www.php.net/manual/en/language.basic-syntax.phptags.php)

## Printing Output

- We can use the `echo` statement to print output.

```php
<?php
echo "Hello, Mercury!";
?>
```

## PHP Variable Naming Conventions

- Start with a dollar sign, `$`
- Can use letters, numbers, or underscores
- First character cannot be a number
- Names are case-sensitive
  - `$age` and `$Age` are different

# Basic Data Types

- PHP is a **loosely typed language.**
- The data type is determined by the value rather than explicitly declared.
- Common types:
  - **String**
    - A sequence of characters
    - Enclosed in single or double quotes
  - **Integer**
    - A whole number
  - **Float**
    - A number with a decimal point
  - **Boolean**
    - `true` or `false`
  - **Array**
    - A collection of values
  - **Object**
    - A collection of data and functions
  - **NULL**
    - No value

## Type Casting

- We can convert between types using **type casting**.
- To cast a value to a type, put the type in parentheses in front of the value.

```php
$myString = "123";
$myInt = (int) $myString;
echo $myInt; // 123
```

## Strings

## String Concatenation

- We can use the `.` operator to concatenate strings.

```php
$firstName = "Bobby";
$lastName = "Beebop";
$fullName = $firstName . " " . $lastName;
echo $fullName; // Bobby Beebop
```

- We can also use the `.=` operator to append to a string.

```php
$name = "Bobby";
$name .= " Beebop";
echo $name; // Bobby Beebop
```

## Common String Functions

[PHP String Functions](https://www.php.net/manual/en/ref.strings.php)

```php
$myString = "Hello, Mercury!";
echo strlen($myString); // 16
echo strtoupper($myString); // HELLO, MERCURY!
echo strtolower($myString); // hello, mercury!
echo str_replace("Mercury", "Venus", $myString); // Hello, Venus!
echo substr($myOtherString, 7); // Mercury!

// We should always trim user input.
$myOtherString = "  Hello, Mercury!  ";
echo trim($myOtherString); // Hello, Mercury!
```

## Arrays

## Indexed Arrays

Referencing:

```php
$names = ["Bobby", "Sally", "Jimmy"];
echo $names[0]; // Bobby
```

Appending:

```php
$names = ["Bobby", "Sally", "Jimmy"];
$names[] = "Jane";
```

## Associative Arrays

- Used to "map" keys to values.
- Also called dictionaries, maps, or hashmaps.
- Key/value pairs.
- Keys are unique.
- Values do not have to be unique.

Referencing:

```php
$students = [
    "C0123456" => "Jonny Danger",
    "C0123457" => "Q",
    "C0123458" => "Jennifer's Cat",
];
echo $students["C0123457"]; // Q
```

Appending:

```php
$students = [
    "C0123456" => "Jonny Danger",
    "C0123457" => "Q",
    "C0123458" => "Jennifer's Cat",
];
// This adds a new key/value pair to the array if it doesn't exist.
// If it does it will overwrite the value.
$students["C0123459"] = "Dr. Evil";
```

### Array Functions

[PHP Array Functions](https://www.php.net/manual/en/ref.array.php)

```php
// Indexed Arrays
$names = ["Bobby", "Sally", "Jimmy"];
echo count($names); // 3
echo implode(", ", $names); // Bobby, Sally, Jimmy
echo in_array("Bobby", $names); // true
echo array_sort($names); // ["Bobby", "Jimmy", "Sally"]
```

```php
// Associative Arrays
$students = [
    "C0123456" => "Jonny Danger",
    "C0123457" => "Q",
    "C0123458" => "Jennifer's Cat",
];
echo array_key_exists("C0123456", $students); // true
echo array_keys($students); // ["C0123456", "C0123457", "C0123458"]
echo array_values($students); // ["Jonny Danger", "Q", "Jennifer's Cat"]
```

# Embedding PHP in HTML

- We can embed PHP in HTML files.
- The PHP code is executed on the server.
- The output is sent to the browser.

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>PHP in HTML</title>
  </head>
  <body>
    <h1>PHP in HTML</h1>
    <?php
    echo "Hello, Mercury!";
    ?>
  </body>
</html>
```

## Shorthand Echo

- We can use the shorthand `<?= ... ?>` to echo a value.

```php
<?php
$name = "Bobby Beebop";
?>
<h1>Name: <?= $name ?></h1>
```

# Configuration

## php.ini

- The php.ini file is the configuration file for PHP.
- In Windows: C:\xampp\php\php.ini

### Things we Might Change

- `display_errors`
  - Set to `On` to display errors in the browser.
- `error_reporting`
  - Set to `E_ALL` to display all errors.
- `date.timezone`
  - Set to your timezone.
  - [List of supported timezones](https://www.php.net/manual/en/timezones.php)
  - America/Indiana/Indianapolis

## Displaying phpinfo()

- The `phpinfo()` function displays information about the PHP environment.
- Let's swap out our `index.php` file for this:

```php
<?php
phpinfo();
?>
```
