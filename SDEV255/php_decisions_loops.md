---
layout: base
title: PHP - Decisions and Loops
course: SDEV255
---

- [Decisions](#decisions)
  - [If Statement](#if-statement)
  - [Ternary Operator](#ternary-operator)
  - [Null Coalescing Operator](#null-coalescing-operator)
- [Loops](#loops)
  - [While Loop](#while-loop)
  - [For Loop](#for-loop)
  - [Foreach Loop](#foreach-loop)
  - [Indexed Arrays](#indexed-arrays)
  - [Associative Arrays](#associative-arrays)
  - [Looping in HTML](#looping-in-html)

# Decisions

## If Statement

```php
$age = 42;
if ($age >= 18) {
    echo "You are an adult.";
}
else if ($age >= 13) {
    echo "You are a teenager.";
}
else {
    echo "You are a child.";
}
```

## Ternary Operator

```php
$age = 42;
echo ($age >= 18) ? "You are an adult." : "You are a child.";
```

## Null Coalescing Operator

_*We will see more of this later. For now, just know that it exists.*_

```php
$age = 42;
echo $age ?? "Unknown";
```

# Loops

## While Loop

```php
$i = 0;
while ($i < 10) {
    echo $i;
    $i++;
}
```

## For Loop

```php
for ($i = 0; $i < 10; $i++) {
    echo $i;
}
```

## Foreach Loop

## Indexed Arrays

```php
$names = ["Bobby", "Sally", "Jimmy"];
foreach ($names as $name) {
    echo $name;
}
```

## Associative Arrays

```php
$person = [
    "firstName" => "Bobby",
    "lastName" => "Beebop",
    "age" => 42
];
foreach ($person as $key => $value) {
    echo "$key: $value";
}
```

## Looping in HTML

- We can use loops to generate HTML in a couple of ways.

1. Use echo to print HTML.

```php
<?php
$names = ["Bobby", "Sally", "Jimmy"];
?>

<ul>
    <?php
        foreach ($names as $name) {
            echo "<li>" . $name . "</li>";
        }
    ?>
</ul>
```

2. Alternative syntax

- `for` `:` and `endfor`
- `foreach` `:` and `endforeach`.

```php
<?php
$names = ["Bobby", "Sally", "Jimmy"];
?>

<ul>
    <?php foreach ($names as $name) : ?>
        <li><?= $name ?></li>
    <?php endforeach; ?>
</ul>
```
