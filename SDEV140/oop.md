---
layout: base
title: Object Oriented Programming
course: SDEV140
---

# Object Oriented Programming

## Basics

- **Object Oriented Programming (OOP)** is a programming paradigm where we model real-world objects
- **Classes** are blueprints used to create objects.
- **Objects** are **instances** of a class.
- **Properties** are variables inside a class.
- **Methods** are functions inside a class.

### Example Classes

| Class       | Object (Variable Name) | Properties              | Methods                             |
| ----------- | ---------------------- | ----------------------- | ----------------------------------- |
| Car         | myCar                  | { make, model, year }   | getMake(), printYear()              |
| Book        | myBook                 | { title, author, year } | getTitle(), getAuthor(), getYear()  |
| BankAccount | myAccount              | { balance }             | getBalance(), deposit(), withdraw() |
| Order       | myOrder                | { items, total }        | getItems(), getTotal()              |

## Creating a Class in Python

- We use the `class` keyword to create a class.

```python
class Person:
    # Properties
    name = 'Bob'

    # Methods
    do_something():
        pass
```

### Pythonic Guidelines - Class Names

<figure>
    <a href="https://peps.python.org/pep-0008/">
    <span>
        <img src="https://miro.medium.com/v2/1*ls5qApmZPtUIV3Z_wll7Fw.png" style="width:25%">
    </span>
    <figcaption>
        PEP 8 – Style Guide for Python Code
    </figcaption>
    </a>
</figure>

- Per [PEP 8 - Class Names](https://www.python.org/dev/peps/pep-0008/#class-names).
  - Class names are
    - PascalCase
    - nouns
  - Property names are
    - snake_case
    - nouns
  - Method names are
    - snake_case
    - verbs

## Instantiating an Object

- To create an **instance** of a class, we use parentheses after the class name.
- We will see shortly that this is because we're actually calling a method.

```python
# Create two instances (variables) of the Person class
person1 = Person()
person2 = Person()
```

## Accessing Properties and Methods

- We use the **dot operator** to access properties and methods of an object.
- We can also use the `dir()` function to see all properties and methods of an object.

```python
person1 = Person()

# Call method
person1.do_something()

# Access property
print(person1.name)
```

### The `self` Keyword

- The `self` keyword refers to the current object.
- We use it to access properties and methods inside the class.

```python
class Person:
    name = 'Bob'

    def do_something(self) -> None:
        # Access the name property of the current object
        print(self.name)
```

## Constructors

- A **constructor** is a special method that is called when an object is created.
- The constructor is used to initialize the object.
- In Python, the constructor is always called `__init__()`.
- Since it's a function, we can pass parameters to initialize the object.

```python
# Class definition
class Person:
    # Constructor
    def __init__(self, name: str) -> None:
        # Initialize the name property
        self.name = name

    def do_something(self) -> None:
        print(self.name)

# Create an instance of the Person class
person1 = Person('Bob')
```

## Controlling Access

**_Note:_ We are discussing general OOP principles here. Python does not have access modifiers. It instead uses naming conventions to indicate access.**

- We can control access to properties and methods using **access modifiers**.
  - Also called **visibility modifiers**.
- Access modifiers are typically implemented as keywords that go before the property or method.

| Modifier  | Description                                          |
| --------- | ---------------------------------------------------- |
| public    | Accessible from anywhere.                            |
| protected | Accessible from within the class and any subclasses. |
| private   | Accessible only from within the class.               |

_C# Example_:

```csharp
class Person
{
    // Private property
    private string name;

    // Public method
    public void DoSomething()
    {
        // Access the name property
        Console.WriteLine(this.name);
    }
}
```

### Pythonic Guidelines - Controlling Access

<figure>
    <a href="https://peps.python.org/pep-0008/">
    <span>
        <img src="https://miro.medium.com/v2/1*ls5qApmZPtUIV3Z_wll7Fw.png" style="width:25%">
    </span>
    <figcaption>
        PEP 8 – Style Guide for Python Code
    </figcaption>
    </a>
</figure>

Per [PEP 8 - Designing for Inheritance](https://peps.python.org/pep-0008/#designing-for-inheritance)...

- Pythonic way of implementing public:
  - "Public attributes should have no leading underscores."
- Pythonic way of implementing protected:
  - "Use one leading underscore only for non-public methods and instance variables."
- Pythonic way of implementing private:
  - "If your class is intended to be subclassed, and you have attributes that you do not want subclasses to use, consider naming them with double leading underscores and no trailing underscores. This invokes Python’s name mangling algorithm, where the name of the class is mangled into the attribute name."
  - Not nearly as common as public and protected.
- "If in doubt, choose non-public."

_Python Example_:

```python
class Person:
    # Public property
    name = 'Bob'

    # Protected property
    _age = 30

    # Private property
    __ssn = '123-45-6789'

    # Public method
    def do_something(self) -> None:
        print(self.name)

    # Protected method
    def _do_something(self) -> None:
        print(self._age)

    # Private method
    def __do_something(self) -> None:
        print(self.__ssn)
```

### Summary

Public is what the "outside" world is meant to see.

Protected is what subclasses are meant to see.

Private is what only the class itself is meant to see.

## Objects as Properties

- We can use objects as properties of other objects.

```php
<?php
class Person
{
    // Properties
    private string $firstName;
    private string $lastName;
    private Person $father;
    private Person $mother;
    private array $children;

    // Constructor
    public function __construct(string $firstName, string $lastName, Person $father, Person $mother)
    {
        $this->firstName = $firstName;
        $this->lastName = $lastName;
        $this->father = $father;
        $this->mother = $mother;
        $this->children = $children;
    }

    // Public Methods
    public function addChild(Person $child) : void
    {
        // Append the child to the array
        // *We didn't cover this syntax, but it's the same result as array_push(),
        // and is more efficient for single value appends.
        $this->children[] = $child;
    }

    public function getFullName() : string
    {
        return $this->firstName . " " . $this->lastName;
    }

    public function printInfo() : void
    {
        // Print the name
        echo $this->getFullName() . "\n";

        // Print children
        foreach ($this->children as $child) {
            echo $child->getFullName() . "\n";
        }
    }
}


$father = new Person("John", "Doe", null, null);
$mother = new Person("Jane", "Doe", null, null);
$father->addChild(new Person("Bobby", "Beebop", $father, $mother));
$father->addChild(new Person("Sally", "Sue", $father, $mother));
$father->addChild(new Person("Jimmy", "John", $father, $mother));
$father->printInfo();
?>
```

## Inheritance
