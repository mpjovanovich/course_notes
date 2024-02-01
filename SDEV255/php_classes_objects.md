---
layout: base
title: PHP - Classes and Objects
course: SDEV255
---

- [Classes and Objects](#classes-and-objects)
  - [Review of OOP](#review-of-oop)
    - [Basics](#basics)
      - [Example Classes](#example-classes)
  - [Creating a Class in PHP](#creating-a-class-in-php)
  - [Instantiating an Object](#instantiating-an-object)
  - [Accessing Properties and Methods](#accessing-properties-and-methods)
    - [String Interpolation with Objects](#string-interpolation-with-objects)
    - [The `$this` Keyword](#the-this-keyword)
  - [Constructors](#constructors)
  - [Controlling Access](#controlling-access)
    - [Getters and Setters](#getters-and-setters)
    - [Private Methods](#private-methods)
  - [Objects as Properties](#objects-as-properties)

# Classes and Objects

<p class="demo">Text Demos</p>

- [localhost/phpbook/section_a/c04/](http://localhost/phpbook/section_a/c04/)

## Review of OOP

### Basics

- **Object Oriented Programming (OOP)** is a programming paradigm where we model real-world objects
- **Classes** are blueprints used to create objects.
- **Objects** are **instances** of a class.
- **Properties** are variables inside a class.
- **Methods** are functions inside a class.

#### Example Classes

| Class       | Object (Variable Name) | Properties                 | Methods                                |
| ----------- | ---------------------- | -------------------------- | -------------------------------------- |
| Car         | $myCar                 | { $make, $model, $year }   | $getMake(), $printYear()               |
| Book        | $myBook                | { $title, $author, $year } | $getTitle(), $getAuthor(), $getYear()  |
| BankAccount | $myAccount             | { $balance }               | $getBalance(), $deposit(), $withdraw() |
| Order       | $myOrder               | { $items, $total }         | $getItems(), $getTotal()               |

## Creating a Class in PHP

- We use the `class` keyword to create a class.
- Class names are PascalCase.
- Properties and methods are camelCase.

```php
class Person
{
    // Properties
    public string $firstName;
    public string $lastName;

    // Methods
    public function getFullName() : string
    {
        return $this->firstName . " " . $this->lastName;
    }
}
```

## Instantiating an Object

- We use the `new` keyword to create an object.

```php
$person = new Person();
```

## Accessing Properties and Methods

- We use the `->` operator to access properties and methods.

```php
$person = new Person();
$person->firstName = "Bobby";
$person->lastName = "Beebop";
echo $person->getFullName(); // Bobby Beebop
```

### String Interpolation with Objects

- We can use string interpolation to access properties and methods by enclosing the expression in curly braces.

```php
echo "Name: {$person->getFullName()}<br>";
```

### The `$this` Keyword

- The `$this` keyword refers to the current object.
- We use it to access properties and methods inside the class.

```php
// ... inside the Person class access properties first name and last name ...
public function getFullName() : string
{
    return $this->firstName . " " . $this->lastName;
}
```

## Constructors

- A **constructor** is a special method that is called when an object is created.
- The constructor is used to initialize the object.
- In PHP, the constructor is always named `__construct()`.
- We can pass parameters to the constructor.

```php
// ... In the person class
public function __construct(string $firstName, string $lastName)
{
    $this->firstName = $firstName;
    $this->lastName = $lastName;
}
// ...
```

## Controlling Access

- We can control access to properties and methods using **access modifiers**.
  - Also called **visibility modifiers**.
- Access modifiers are keywords that go before the property or method.
- By default, properties and methods are `public` in PHP.

| Modifier  | Description                                          |
| --------- | ---------------------------------------------------- |
| public    | Accessible from anywhere.                            |
| protected | Accessible from within the class and any subclasses. |
| private   | Accessible only from within the class.               |

\* We will not do much with inheritance in this class, so we won't see protected much.

### Getters and Setters

- We often use **getter** and **setter** methods to control access to properties.

```php
class Person
{
    // Properties
    private int $age;

    // Constructor
    public function __construct(string $age)
    {
        $this->age = $age;
    }

    // Getter
    // Any code can get the age.
    public function getAge() : string
    {
        return $this->age;
    }

    // Setter
    // Outside code can't set the age directly.
    // We want to keep it immutable after instantiation.
    private function setAge() : void
    {
        $this->age = $age;
    }
}
```

### Private Methods

- We might also have functions that are used internally by the class, but not exposed to outside code.

```php
class Person
{
    // Properties
    private int $age;
    private bool $has_id;

    // ...

    // Can be called outside the class.
    public function allowAccess() : bool
    {
        return $this->isAdult() && $this->has_id;
    }

    // Internal functions
    // Only used by the class.
    private function isAdult() : bool
    {
        return $this->age >= 18;
    }
}
```

## Objects as Properties

- We can use objects as properties of other objects.

```php
class Person
{
    // Properties
    private string $firstName;
    private string $lastName;
    private ?Person $father; // ?means the property can be null
    private ?Person $mother; // This is referred to as a "nullable" type.
    private array $children;

    // Constructor
    public function __construct(string $firstName, string $lastName, ?Person $father, ?Person $mother)
    {
        $this->firstName = $firstName;
        $this->lastName = $lastName;
        $this->father = $father;
        $this->mother = $mother;
    }

    public function addChild(Person $child): void
    {
        $this->children[] = $child;
    }

    public function getFullName(): string
    {
        return $this->firstName . " " . $this->lastName;
    }

    public function printInfo(): void
    {
        // Print my info
        echo $this->printFormattedInfo();

        // Print children
        foreach ($this->children as $child) {
            echo $child->printFormattedInfo();
        }
    }

    private function printFormattedInfo(): string
    {
        // Father and mother might be null, so we have to check if  set before using.
        $father_name = $this->father === null ? "" : $this->father->getFullName();
        $mother_name = $this->mother === null ? "" : $this->mother->getFullName();

        $output = "<p style=\"font-weight: bold;\">Person Info: {$this->getFullName()}</p>";
        $output .= "<p>Father: $father_name</p>";
        $output .= "<p>Mother: $mother_name</p>";

        return $output;
    }
}

// Create the parents (they have no parents).
$father = new Person("John", "Doe", null, null);
$mother = new Person("Jane", "Doe", null, null);

// Create children and add them to the father.
$father.addChild( new Person("Bobby", "Beebop", $father, $mother) );
$father.addChild( new Person("Sally", "Beebop", $father, $mother) );
$father.addChild( new Person("Jimmy", "Beebop", $father, $mother) );

// This will print the father and all of his children (recursively).
$father->printInfo();
```
