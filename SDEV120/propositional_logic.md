---
layout: base
title: SDEV 120 - Propositional Logic
---

# Propositional Logic

**Deductive logic** is a systematic way of thinking that allows us to determine the truth value of a statement based on the truth values of other statements.

**Propositional logic** is a type of deductive logic that deals with propositions.

**Boolean algebra** is a type of algebra that deals with propositions, named after George Boole.

## Propositions

**Propositions** are statements that are either true or false.

We can assign variables to propositions to make them easier to work with:

| Variable | Proposition    |
| :------- | :------------- |
| A        | It is raining. |
| B        | It is cold.    |
| C        | It is snowing. |

More meaningful variable names can also be used:

| Variable | Proposition    |
| :------- | :------------- |
| Raining  | It is raining. |
| Cold     | It is cold.    |
| Snowing  | It is snowing. |

---

## Truth Values

**Truth values** are the values that propositions can have: true or false. These are also called Boolean values.

**Truth tables** are tables that show all possible truth values for propositions in a problem.

See [Truth Tables Reference Sheet](../common/truth_table_reference_sheet.md?course=SDEV120)

## Logical Connectives

**Logical connectives** are symbols that are used to combine propositions into more complex propositions.

A **unary operator** is an operator that takes one operand.

- **Negation** is a unary operator.

A **binary operator** is an operator that takes two operands.

- **Conjunction**, **disjunction**, and **exclusive OR** are binary operators.

### Negation (NOT)

...

### Conjunction (AND)

...

### Disjunction (OR)

...

### Exclusive OR (XOR)

...

## Order of Operations

### Classic Algebra

| Precedence | Operator | Description    |
| :--------: | :------- | :------------- |
|     1      | ()       | Parentheses    |
|     2      | ^        | Exponent       |
|     3      | \*       | Multiplication |
|     3      | /        | Division       |
|     3      | %        | Modulus        |
|     4      | +        | Addition       |
|     4      | -        | Subtraction    |
|     5      | =        | Assignment     |

Order of operations:

- Expressions in brackets evaluate before the outside of the brackets
- Operators with higher precedence evaluate first
- Expressions evaluate left to right

#### Modulus

The **modulus** operator returns the remainder of a division operation.

**_Examples:_**

```
4 % 2   = 2, R0 = 0
5 % 2   = 2, R1 = 1
11 % 9  = 1, R2 = 2
1 % 7   = 0, R1 = 1
```

#### Practice Problems

<details>
    <summary>100 - 25 * 3 % 4 </summary>
    <div>
        <p>100 - ((25 * 3) % 4)</p>
        <p>100 - (75 % 4)</p>
        <p></p>
    </div>
</details>

### Boolean Algebra

...

## Logical Laws

**Logical laws** are rules that can be used to manipulate propositions.

### Associative Laws

...

### Commutative Laws

...

### Distributive Laws

...

### De Morgan's Laws

...

## Implications

...

Given a set of assumptions, We can use initial truth values to determine the truth values of other propositions.

TODO

... predicates ...

... Circuits ... another file?
