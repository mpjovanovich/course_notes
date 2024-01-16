---
layout: base
title: SDEV 120 - Propositional Logic Intro and Connectives
---

- [Propositional Logic](#propositional-logic)
  - [Propositions](#propositions)
  - [Logical Connectives](#logical-connectives)
    - [Negation (NOT)](#negation-not)
      - [Example](#example)
    - [Conjunction (AND)](#conjunction-and)
      - [Example](#example-1)
      - [Example](#example-2)
    - [Disjunction (OR)](#disjunction-or)
      - [Example](#example-3)
      - [Example](#example-4)
    - [Exclusive OR (XOR)](#exclusive-or-xor)
      - [Example](#example-5)
    - [Conditional / Implication (IF)](#conditional--implication-if)
      - [Example](#example-6)
      - [Example](#example-7)
    - [Biconditional (IFF)](#biconditional-iff)

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

## Logical Connectives

**Logical connectives** are symbols that are used to combine propositions into more complex propositions.

A **unary operator** is an operator that takes one operand.

- **Negation** is a unary operator.

A **binary operator** is an operator that takes two operands.

- **Conjunction**, **disjunction**, and **exclusive OR** are binary operators.

### Negation (NOT)

| P     |    ¬P |
| :---- | ----: |
| True  | False |
| False |  True |

**Symbol**: ¬

**Python**: NOT

**Description**: Returns the opposite truth value of propositions.

**Used When**: You hear the word "not".

#### Example

Let P = It is raining.

- It is not raining = ¬P

### Conjunction (AND)

| P     | Q     | P ∧ Q |
| :---- | :---- | ----: |
| True  | True  |  True |
| True  | False | False |
| False | True  | False |
| False | False | False |

**Symbol**: ∧

**Python**: AND

**Description**: Evaluates to true if all propositions are true.

**Used When**: You hear the word "and" or "is".

#### Example

Let P = It is raining.
Let Q = It is cold.

- It is rainy and cold = P ∧ Q

#### Example

Spot is P dog.

Let Spot = Is Spot.
Let Dog = Is a dog.

- Spot is a dog = Spot ∧ Dog

### Disjunction (OR)

| P     | Q     | P ∨ Q |
| :---- | :---- | ----: |
| True  | True  |  True |
| True  | False |  True |
| False | True  |  True |
| False | False | False |

**Symbol**: ∨

**Python**: OR

**Description**: Evaluates to true if any proposition is true.

**Used When**: You hear the word "or".

#### Example

Let P = It is raining.
Let Q = It is cold.

- It is rainy or cold (possibly both) = P ∨ Q

#### Example

Karen is an Ivy Tech student or a Purdue student.

_Method 1_

Let KarenIvyStudent = Karen is an Ivy Tech student.
Let KarenPurdueStudent = Karen is a Purdue student.

- Karen is an Ivy Tech student or Karen is a Purdue student = KarenIvyStudent ∨ KarenPurdueStudent

_Method 2_

Let Karen = Is Karen.
Let IvyStudent = Is an Ivy Tech student.
Let PurdueStudent = Is a Purdue student.

- Karen is an Ivy Tech student or Karen is a Purdue student = (Karen ∧ IvyStudent) ∨ (Karen ∧ PurdueStudent)
- _This shows how the way that we speak doesn't always match up with formal logic._

### Exclusive OR (XOR)

| P     | Q     | P ⊕ Q |
| :---- | :---- | ----: |
| True  | True  | False |
| True  | False |  True |
| False | True  |  True |
| False | False | False |

**Symbol**: ⊕

**Python**: doesn't exist

**Description**: Evaluates to true if one and only one proposition is true.

**Used When**: You hear the word "either", or it is implied in the context.

#### Example

Let P = Ted went to the store.
Let Q = Ted went to the gym.

- Ted went to the store or the gym (but not both) = P ⊕ B

### Conditional / Implication (IF)

| P     | Q     | P → Q |
| :---- | :---- | ----: |
| True  | True  |  True |
| True  | False | False |
| False | True  |  True |
| False | False |  True |

**Symbol**: → or ⇒

**Python**: `if`

**Description**: Evaluates to true if a condition implies the truth of another proposition (if P is true than Q must also be true).

**Used When**: You hear the word "if" or "is".

#### Example

Let P = It is raining.
Let Q = Bill uses an umbrella.

- If it is raining, then Bill uses an umbrella = P → Q

#### Example

Let P = Is a dog.
Let Q = Is a mammal.

- A dog is a mammal = P → Q
- Roughly equivalent to "If something is a dog, then it is a mammal."

### Biconditional (IFF)

| P     | Q     | P ↔ Q |
| :---- | :---- | ----: |
| True  | True  |  True |
| True  | False | False |
| False | True  | False |
| False | False |  True |

**Symbol**: ↔ or ⇔

**Python**: doesn't exist

**Description**: Evaluates to true if both propositions always have the same truth value. This implies that both propositions are either true or false.

**Used When**: You hear the words "if and only if".

**_Example_**

Let P = John is alive.
Let Q = John's heart is beating.

- John is alive if and only if John's heart is beating = P ↔ Q

<!--
TODO: Probably break into another file below here

## Truth Tables

**Truth values** are the values that propositions can have: true or false. These are also called Boolean values.

**Truth tables** are tables that show all possible truth values for propositions in a problem.


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
    <summary>Solve: 100 - 25 * 3 % 4 </summary>
    <div>
        <p>100 - ((25 * 3) % 4)</p>
        <p>100 - (75 % 4)</p>
        <p>100 - 3</p>
        <p>97</p>
    </div>
</details>

<details>
    <summary>Solve: 32 / 4 + 12 / 6 - 9 % 2</summary>
    <div>
        <p>(32 / 4) + (12 / 6) - (9 % 2)</p>
        <p>8 + 2 - 1</p>
        <p>9</p>
    </div>
</details>

### Boolean Algebra

...

---

TODO: Probably break into another file below here

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

...

Given a set of assumptions, We can use initial truth values to determine the truth values of other propositions.

---

TODO: Probably break into another file below here
... Circuits ... another file? -->
