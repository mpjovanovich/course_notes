---
layout: base
title: Grammar and Arithmetic
course: SDEV120
---

- [Grammar and Arithmetic](#grammar-and-arithmetic)
  - [Grammar and Syntax](#grammar-and-syntax)
  - [Expressions](#expressions)
  - [Statements](#statements)
  - [Syntax Trees](#syntax-trees)
  - [Comparisons in Python](#comparisons-in-python)
  - [Logical Operators in Python](#logical-operators-in-python)
  - [Function Composition](#function-composition)
    - [Arithmetic Function Composition](#arithmetic-function-composition)
    - [Boolean Function Composition](#boolean-function-composition)
  - [For the Homework](#for-the-homework)

# Grammar and Arithmetic

<figure>
    <span>
        <img src="https://imgs.xkcd.com/comics/code_quality_2x.png" style="">
    </span>
</figure>

## Grammar and Syntax

We can explore how programming languages work by examining the basic building blocks of code.

**Grammar** is the set of rules that defines the structure of a language.

**Syntax** is the set of rules that defines how symbols can be arranged to form valid code. It is a subset of grammar.

_Example_

"I went to the store last Saturday."

Expressions: "(I) (went) (to the store) (last Saturday)."

How many ways can we rearrange the words to form a gramatically valid sentence?

_Example_

```python
x = 5 # Synactically correct
5 = x # Syntax error
```

## Expressions

Expressions **evaluate** to a value.

- A valid unit of code that resolves to a value (MDN Web Docs)
- May assign a value to a variable, or it may simply evaluate to a value.

```python
3 - 1
x + y
f(x) / 2
```

## Statements

Statements **execute** to do something.

- A line of code commanding a task. Every program consists of a sequence of statements. (MDN Web Docs)
- In python ends with a line break.
- In other languages ends with a semicolon.

```python
# All of the above, plus...
x = 9
if x > y:
print('Test')
return
```

## Syntax Trees

A **syntax tree** is a visual representation of the syntax of a programming language for some expression.

```
Sytax tree for: (7 + 3) * (5 - 2)
```

<figure>
    <span>
        <img src="images/parse_tree.png" style="">
    </span>
</figure>

_Expanding Function Calls_

```
Given f(x) = x / 2
Find the syntax tree for: 10 * f(10) + 3 
```

_More examples_

```
1) 5 + 3 * 2

2) (5 + 3) * 2 

3)  10 / 2 / 2 - 1

4)  10 / (2 / 2) - 1

5)  Given f(x) = x * 2 + 2
    Find: f(2) * f(3)
```

## Comparisons in Python

A comparison always returns a boolean value, either `True` or `False`.

| Operator | Description |
|----------|-------------|
| ==       | Equal to    |
| !=       | Not equal to |
| <        | Less than   |
| >        | Greater than |
| <=       | Less than or equal to |
| >=       | Greater than or equal to |

```python
print(5 == 5) # True
print(5 != 5) # False
```

## Logical Operators in Python

| Operator | Description |
|----------|-------------|
| and      | conjunction |
| or       | disjunction |
| not      | negation |

```python
print( True and False ) # False
print( True or False ) # True
print( not True ) # False
```

## Function Composition

**Function Composition** is the process of combining two or more functions to produce a new function.

### Arithmetic Function Composition

```
f(x) = x + 1
g(x) = x * 2
```

An example of function composition is `f(g(x))`.

Evaluate `f( g(3) )` by plugging in `3` for `x`:

```
f( g(3) )
  = f(3 * 2)
  = f(6)
  = 6 + 1
  = 7
```

_More examples_

```
1) g( f(3) )

2) g( f(2) + 4 )

3) f( f(2) )

4) f( f( f(6) + 1 ) + 2 ) + 3
```

### Boolean Function Composition

```
f(x, y) = x and y
g(x, y) = x or y
```

An example of function composition is `f(g(x, y), x)`.

Evaluate `f( g(True, False), True)` by plugging the values into the functions:

```
f( g(True, False), True)
  = f(True or False, True)
  = f(True, True)
  = True and True
  = True
```

_More examples_

```
1) g( f(True, False), False)

2) f( f(True, False), False )

3) g( f(True, False), g(True, True) )
```

## For the Homework

- draw.io to make syntax trees