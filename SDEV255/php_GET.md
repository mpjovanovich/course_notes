---
layout: base
title: PHP - GET
course: SDEV255
---

- [GET](#get)
  - [Query Strings](#query-strings)
    - [Parts of a Query String](#parts-of-a-query-string)
    - [Sources of GET Request](#sources-of-get-request)
    - [Form with GET Method](#form-with-get-method)
  - [PHP GET Array](#php-get-array)
    - [Missing Parameters](#missing-parameters)
    - [Patterns for Checking Parameter Set](#patterns-for-checking-parameter-set)
  - [GET Examples](#get-examples)
    - [Self-linking Page](#self-linking-page)
    - [Maintaining State](#maintaining-state)
    - [Calculator:](#calculator)
  - [Passing an Array via GET](#passing-an-array-via-get)

# GET

A GET request is used to request data from a specified resource.

## Query Strings

Parameters may be passed in the URL of a GET request.

A URL may contain data that is passed to the server via a **query string**.

### Parts of a Query String

<figure>
    <span>
        <img src="https://lh4.googleusercontent.com/bzNgNITcGMxVszuieKXJSF7Lswjw64bI7yuOvzQIyiedIzTqURKndIZkBL6OJXZcn3mQDMinzqM939F7ATVxr70XqyJVoG8EC9KOuwndGjpc_S0howFdJXKsXkrIwB2UF2ezFSFV" style="">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

| Part of Query String | Description                                     |
| -------------------- | ----------------------------------------------- |
| `?`                  | start of query string                           |
| `=`                  | separator between name and value                |
| `&`                  | separator between parameters (if more than one) |

### Sources of GET Request

- A link on a web page
- A form submitted with the `GET` method
- A program / API
- A user typing in a URL (a reason to always validate)

### Form with GET Method

If data comes from an HTML form, the `name` attribute of input is used as the key in the `$_GET` array.

```html
<form action="test.php" method="GET">
  <label for="name">Name:</label>
  <input type="text" name="name" id="name" />
  <label for="age">Age:</label>
  <input type="text" name="age" id="age" />
  <input type="submit" value="Submit" />
</form>
```

Result URL: `http://localhost:8080/test.php?name=John&age=42`

## PHP GET Array

PHP automatically creates an associative array called `$_GET` that contains the query string parameters.

```php
<?php
// http://localhost:8080/test.php?name=John&age=42
echo $_GET['name']; // John
echo $_GET['age']; // 42
```

### Missing Parameters

If a parameter is missing, PHP will throw an error.

Use the `isset()` function to check if a parameter is set.

```php
// http://localhost:8080/test.php?name=John&age=42
if (isset($_GET['age'])) {
  echo $_GET['age'];
} else {
  echo 'Age is not set.';
}
```

### Patterns for Checking Parameter Set

Ternary if:

```php
$age = isset($_GET['age']) ? $_GET['age'] : '';
```

Null coalescing:

```php
$age = $_GET['age'] ?? '';
```

## GET Examples

In these examples we use `$_SERVER['PHP_SELF']` to set the form action to the current page.

### Self-linking Page

We can include anchor tags in the page that link to the page itself.

```php
<?php
// Check if the color parameter is set in the query string
if (isset($_GET['color'])) {
    $color = $_GET['color'];
    echo '<style>body { background-color: ' . $color . '; }</style>';
}
?>
<!-- Some basic styles -->
<style>
    a {
        padding: 10px 20px;
        margin: 10px;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
</style>
<!-- The links -->
<a href="?color=red" style="background-color: red;">Red</a>
<a href="?color=green" style="background-color: green;">Green</a>
<a href="?color=blue" style="background-color: blue;">Blue</a>
```

### Maintaining State

If a user submits a form, the form should be redisplayed with the user's input (rather than a "new" blank form).

```php
<?php
$remembered = $_GET['remembered'] ?? '';
?>
<form action="<?= $_SERVER['PHP_SELF'] ?>" method="GET">
    <label for="remembered">Remember me please:</label>
    <input type="text" name="remembered" id="remembered" value="<?= $remembered ?>" />
    <input type="submit" value="Submit" />
</form>
```

### Calculator:

```php
<?php
$first = $_GET['first'] ?? '';
$second = $_GET['second'] ?? '';
$operator = $_GET['operator'] ?? '';
$result = '';
$errorMessage = '';

// Ideally we would do more validation on the input prior...
if ($operator) {
    if ($operator == '+') {
        $result = $first + $second;
    } elseif ($operator == '-') {
        $result = $first - $second;
    } elseif ($operator == '*') {
        $result = $first * $second;
    } elseif ($operator == '/') {
        $result = $first / $second;
    } else {
        $errorMessage = 'Invalid operator.';
    }
}

/* ************************************************************ *
* ADVANCED CONCEPT: match
* Will have same result as if statements above
/* ************************************************************ */
// if ($operator) {
//     $result = match ($operator) {
//         '+' => $first + $second,
//         '-' => $first - $second,
//         '*' => $first * $second,
//         '/' => $first / $second,
//         default => $errorMessage = 'Invalid operator.',
//     };
// }};
/* ************************************************************ */
?>

<!-- Make it look decent -->
<style>
    label {
        display: inline-block;
        margin-bottom: 10px;
        width: 200px;
    }

    .error {
        color: red;
        font-weight: bold;
    }
</style>

<!-- HTML -->
<?php
if ($errorMessage) {
    echo "<p class=\"error\">$errorMessage</p>";
}
?>
<h1>Result: <?= $result; ?></h1>
<form method="GET" action="<?= $_SERVER['PHP_SELF'] ?>">
    <label for="first">First Number:</label>
    <input type="text" name="first" id="first" value="<?= $first ?>" /><br />
    <label for="operator">Operator:</label>
    <input type="text" name="operator" id="operator" value="<?= $operator ?>" /><br />
    <label for="second">Second Number:</label>
    <input type="text" name="second" id="second" value="<?= $second ?>" /><br />
    <input type="submit" name="calculate" value="Calculate" />
</form>
```

## Passing an Array via GET

- Arrays can be passed via GET by using the `[]` notation in the name attribute.
- In the example below, the `$_GET['stuff']` array will contain the values of any checked boxes.

```php
<?php
$stuff = $_GET['stuff'] ?? [];
print_r($stuff);
?>
```

```html
<form action="" method="GET">
  <label><input type="checkbox" name="stuff[]" value="item1" />Item 1</label
  ><br />
  <label><input type="checkbox" name="stuff[]" value="item2" />Item 2</label
  ><br />
  <label><input type="checkbox" name="stuff[]" value="item3" />Item 3</label
  ><br />
  <input type="submit" value="Submit" />
</form>
```
