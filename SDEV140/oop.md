---
layout: base
title: Object Oriented Programming
course: SDEV140
---

- [Object Oriented Programming](#object-oriented-programming)
  - [Basics](#basics)
    - [Example Classes](#example-classes)
  - [Creating a Class in Python](#creating-a-class-in-python)
    - [Pythonic Guidelines - Class Names](#pythonic-guidelines---class-names)
  - [Instantiating an Object](#instantiating-an-object)
  - [Accessing Properties and Methods](#accessing-properties-and-methods)
    - [The `self` Keyword](#the-self-keyword)
  - [Constructors](#constructors)
  - [Encapsulation](#encapsulation)
    - [Access Modifiers](#access-modifiers)
    - [Pythonic Guidelines - Controlling Access](#pythonic-guidelines---controlling-access)
    - [Summary](#summary)
  - [Basics - Examples](#basics---examples)
    - [Example 1: Maintaining State](#example-1-maintaining-state)
    - [Example 2: Objects as Properties](#example-2-objects-as-properties)
  - [Inheritance](#inheritance)

# Object Oriented Programming

## Basics

- **Object Oriented Programming (OOP)** is a programming paradigm where we model real-world objects
- **Classes** are blueprints used to create objects.
- **Objects** are **instances** of a class.
- **Methods** are functions inside a class.
- **Properties** are variables inside a class.
- **State** is the current collective value of an object's properties.

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
# Define the Person class
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
- When calling a method, we do not need to pass `self` as an argument.

```python
# Define the Person class
class Person:
    name = 'Bob'

    def do_something(self) -> None:
        # Access the name property of the current object
        print(self.name)

# Create an instance of the Person class
person1 = Person()

# Call the do_something method
# No need to pass any arguments.
person1.do_something()
```

## Constructors

- A **constructor** is a special method that is called when an object is created.
- The constructor is used to initialize the object.
- In Python, the constructor is always called `__init__()`.
- The constructor is optional.
- The first argument must be `self`.
- Since it's a function, we can define and pass other parameters to initialize the object.

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

## Encapsulation

- One of the "three pillars of OOP" (along with inheritance and polymorphism).
- **Encapsulation** is the idea of hiding the internal workings of a class from the outside world.
- Our class should be a "black box" to the outside world.

_Example_:

- Class = `BankAccount`
- Methods that users of class should see (friendly public interface / API):
  - `transfer_to_account()`
- Methods that users of class should not see (internal "banky" implementation details):
  - `_negotiate_routing_channel()`
  - `_await_confirmation_code()`
  - `_log_transaction()`
  - `_send_confirmation_email()`

### Access Modifiers

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

## Basics - Examples

### Example 1: Maintaining State

- We can keep track of the state of an object using properties.

```python
# Define the class:
class BankAccount:
    # CONSTRUCTOR
    def __init__(self, initial_balance: float = 0) -> None:
        # We don't want the user to directly access the balance property,
        # so we make it non-public by prefixing it with an underscore.
        self._balance = initial_balance

    ## PUBLIC METHODS
    def deposit(self, amount: float) -> None:
        if amount > 0:
            self._balance += amount
            print(f"Deposited ${amount}. New balance: ${self._balance}")
        else:
            print("Invalid deposit amount. Please deposit a positive amount.")

    def withdraw(self, amount: float) -> None:
        if amount <= 0:
            print("Invalid withdrawal amount. Amount must be greater than 0.")
        elif amount > self._balance:
            print("Insufficient funds.")
        else:
            self._balance -= amount
            print(f"Withdrew ${amount}. New balance: ${self._balance}")

    # We still want the user to be able to view the balance - just not change it.
    # We can accomplish this by creating a getter method that returns the value of the balance property.
    def get_balance(self) -> float:
        return self._balance

# Use the class:
account = BankAccount(initial_balance=1000)
print(f"Initial balance: ${account.get_balance()}")
account.deposit(500)
account.withdraw(200)
account.withdraw(1000)  # Should fail due to insufficient funds
print(f"Final balance: ${account.get_balance()}")
```

### Example 2: Objects as Properties

- We can use objects as properties of other objects.

```python
# Define the class:
class Person:
    # CONSTRUCTOR
    def __init__(
        self,
        first_name: str,
        last_name: str,
        # Optional['Person] is how we type hint an optional Person object
        # We will default to None if no father or mother is passed
        father: Optional['Person'] = None,
        mother: Optional['Person'] = None
    ) -> None:
        # Initialize properties to the values passed to the constructor
        self.first_name = first_name
        self.last_name = last_name
        self.father = father
        self.mother = mother

        # Initialize children property as an empty list
        self.children = []

    ## PUBLIC METHODS
    def add_child(self, child: 'Person') -> None:
        self.children.append(child)

    def print_info(self) -> None:
        # Print the name
        father = self.father._get_full_name() if self.father else 'N/A'
        mother = self.mother._get_full_name() if self.mother else 'N/A'
        print(
            f"Name: {self._get_full_name()}, Father: {father}, Mother: {mother}"
        )

        # Print children
        if len(self.children) > 0:
            print("Children:")
            for child in self.children:
                print("  ", end="")
                child.print_info()

    ## PROTECTED METHODS
    def _get_full_name(self) -> str:
        return self.first_name + " " + self.last_name

# Create parents
father = Person("John", "Doe")
mother = Person("Jane", "Doe")

# Create children
child1 = Person("Bobby", "Beebop", father, mother)
child2 = Person("Charles", "Beebop", father, mother)
child3 = Person("Davey", "Beebop", father, mother)

# Add children to father
father.add_child(child1)
father.add_child(child2)
father.add_child(child3)

# Print father's info
father.print_info()
```

## Inheritance

- One of the "three pillars of OOP"
- **Inheritance** is the idea of extending functionality from an existing class.

### Base Class

The class from which other classes inherit is called the:

- **Base class**
- **Parent class**
- **Superclass**

Typically more general in terms of functionality.

### Derived Class

The class that inherits from another class is called the:

- **Derived class**
- **Child class**
- **Subclass**

Typically more specialized in terms of functionality.

### Why use a Derived Class?

- Override properties/methods from base class.
- Add new properties/methods specific to derived class.

### Why use Inheritance?

- Override properties/methods from base class.
- Add new properties/methods specific to derived class.

### Inheritance Example

```python
class Shape:
    def __init__(self, color):
        # Some debug info
        print("SHAPE: CONSTRUCTOR CALLED")

        # Set the properties
        self._name = 'Shape'
        self._color = color

    def print_info(self):
        print(f"Name: {self._name}")
        print(f"Color: {self._color}")

class Triangle(Shape):
    def __init__(self, color, base, height):
        # Some debug info
        print("TRIANGLE: CONSTRUCTOR CALLED")

        # Call the constructor on the superclass
        # This should be done prior to any other initialization
        # for the derived class.
        super().__init__(color)

        # Set the properties
        # Override the name property
        self._name = 'Triangle'
        self._base = base
        self._height = height

    # Will override the print_info method in the superclass
    def print_info(self):
        print(f"Name: {self._name}")
        print(f"Color: {self._color}")
        print(f"Area: {self.get_area()}")

    # New method that doesn't exist in the superclass
    def get_area(self):
        return 0.5 * self._base * self._height

# Examples:
# shape = Shape("blue")
# shape.print_info()
# triangle = Triangle("red", 4, 3)
# triangle.print_info()
```
