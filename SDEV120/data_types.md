---
layout: base
title: Variables, Constants, Data Types
course: SDEV120
---

- [Variables](#variables)
  - [Declaring Variables](#declaring-variables)
  - [Naming Variables](#naming-variables)
- [Constants](#constants)
- [Data Types](#data-types)
  - [Checking Data Type in Python](#checking-data-type-in-python)
  - [Numeric Data Types](#numeric-data-types)
  - [Text Data Types](#text-data-types)
  - [Boolean Data Types](#boolean-data-types)
  - [Compound Data Types](#compound-data-types)

# Variables

<figure>
    <span>
        <img src="https://imgs.xkcd.com/comics/code_quality_2_2x.png" style="">
    </span>
</figure>

- A **variable** is a named storage location in a computer's memory.
- Variable name is used to reference its value.
- Used to store data that can be changed.

## Declaring Variables

- **Declaration** is the process of creating a variable.
- **Initialization** is the process of assigning a value to a variable.
- **Assignment** is the process of changing the value of a variable.

```python
# Variable is declared and initialized (assigned a value)
# In python this will always be done in one step
x = 5

# Variable is reassigned a new value
x = 10
```

## Naming Variables

Always use descriptive names for variables.

- Must start with a letter or underscore
- Can contain letters, numbers, and underscores
- Cannot contain spaces or special characters

_Good:_

```python
# Peers will thank you when they read your code.
student_name = "Dave Duncan"
minimum_age_requirement = 21
software_dept_course_prefix = "SDEV"
```

_Bad:_

```python
# Please don't abrev...
nm = "Dave Duncan"
m_age = 21
sdc = "SDEV"
```

# Constants

- Same as a variable, but its value cannot / should not be changed.
- Use capital letters and underscores to name by convention.

```python
# Constant is declared and initialized
PI = 3.14159
TAX_RATE = 0.07
BILLING_CODE = "A123"
```

# Data Types

- A **data type** tells the compiler or interpreter what type of data a variable / constant is allowed and intended to hold.
- Lets the computer know how to store and handle the data at a low level.

## Checking Data Type in Python

```python
x = 5
print(type(x))  # <class 'int'>

name = "Dave Duncan"
print(type(name))  # <class 'str'>
```

## Numeric Data Types

- **Integer** (int) - whole numbers
  - -11
  - 0
  - 42
- **Floating Point** (float) - numbers with a decimal point
  - 3.14
  - 0.0
  - -1.333333333

## Text Data Types

Use single or double quotes to create a string.

- **Character** (char) - single letter, number, or symbol
  - 'a'
  - 'Z'
  - '7'
  - '!'
- **String** (str) - sequence of characters
  - "Hello, World!"
  - "SDEV120"
  - "123" (note: this is a string, not an integer b/c of the quotes)

## Boolean Data Types

- **Boolean** (bool) - True or False
- Capitalize the first letter in Python
- Often start with "is"

Best to use positive names for boolean variables to avoid double negatives.

_Good:_

```python
is_remote_student = True
is_admin = False
has_positive_balance = True
```

_Bad:_

```python
not_remote_student = False
not_admin = True
has_negative_balance = False
```

## Compound Data Types

- Many other data types are built from these basic types.
  - Date and Time
  - Lists
  - Dictionaries
  - Tuples
  - etc.
