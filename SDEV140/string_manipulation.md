---
layout: base
title: String Manipulation
course: SDEV140
---

- [String Manipulation](#string-manipulation)
  - [Concatenation](#concatenation)
    - [The `+` Operator](#the--operator)
    - [Concantenation with Other Data Types](#concantenation-with-other-data-types)
  - [String Interpolation](#string-interpolation)
  - [Formatting Output](#formatting-output)
    - [Number Formatting](#number-formatting)
    - [Width and Padding](#width-and-padding)

# String Manipulation

## Concatenation

**Concatenation** is the process of combining two or more strings into a single string.

### The `+` Operator

In Python, you can use the `+` operator to concatenate strings.

```python
first_name = "Billy"
last_name = "Bornsen"
output = "My name is " + first_name + " " + last_name + "."
print(output)
```

We can also rewrite the above without the temporary variable `output`:

```python
first_name = "Billy"
last_name = "Bornsen"
print("My name is " + first_name + " " + last_name + ".")
```

### Concantenation with Other Data Types

If we use a data type that is not a string, it must be converted to a string before concatenation.

```python
age = 21
output = "I am " + str(age) + " years old."
print(output)
```

## String Interpolation

**String interpolation** allows us to embed expressions within string literals. These expressions can then use any variables that are available.

Python uses **f-strings** for string interpolation. To use an f-string:

- prefix the string with `f`
- use curly braces `{}` to embed expressions

```python
first_name = "Billy"
last_name = "Bornsen"
print(f"My name is {first_name} {last_name}.")
```

We don't need to convert other data types to strings when using f-strings:

```python
age = 21
print(f"I am {age} years old.")
```

## Formatting Output

We can include format specifiers with f-strings to format output.

- The format specifier is placed after a colon `:` following the variable to be formatted.
- The format specifier can include precision, width, and padding.

### Number Formatting

| Format Specifier | Description          |
| ---------------- | -------------------- |
| `:f`             | Floating point       |
| `:,`             | Use comma separators |

```python
x = 119042.123456

# Round to 2 decimal places
print(f"The value of x is {x:.2f}")

# Round to 0 decimal places
print(f"The value of x is {x:.0f}")

# Use comma as thousands separator
print(f"The value of x is {x:,}")

# Use comma as thousands separator and round to 2 decimal places
# (useful for currency)
print(f"The value of x is {x:,.2f}")
```

### Width and Padding

Below are some examples of width and padding format specifiers.

- Any character may be used when padding a string.
- The padding character is placed after the colon `:`
- If no padding character is specified, spaces are used.

| Format Specifier | Description              |
| ---------------- | ------------------------ |
| `:n`             | Use `n` spaces           |
| `:0n`            | Use `n` zeros            |
| `:<n`            | Left align               |
| `:>n`            | Right align              |
| `:^n`            | Center align             |
| `:0<n`           | Left align, pad with `0` |
| `:x<n`           | Left align, pad with `x` |

**Pad a Number With Zeroes**

```python
# Pad each module with zeroes to width of two
current_module = 1
print(f"Module {current_module:02}")

current_module = 2
print(f"Module {current_module:02}")

# ... assuming we print through module 10 ...
current_module = 10
print(f"Module {current_module:02}")
```

**Tabular Layout:**

```python
# Format the following two records with two columns of width 10 and 3:
person1 = "Billy"
age1 = 21

person2 = "Jen"
age2 = 22

person3 = "Carlos"
age3 = 19

# Center align both title columns
print(f"{'Name':^10} {'Age':^3}")

# Pad each column with underscores
print(f"{'':_^10} {'':_^3}")

# Right align both columns
print(f"{person1:>10} {age1:>3}")
print(f"{person2:>10} {age2:>3}")
print(f"{person3:>10} {age3:>3}")
```
