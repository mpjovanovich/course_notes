---
layout: base
title: Propositional Logic - Intro and Connectives
course: SDEV120
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

<details>
<summary>
Express using propositions: "It is not raining".
</summary>
<div>
<p>Let P = It is raining.</p>
<p>¬P</p>
</div>
</details>

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

<details>
<summary>
Express using propositions: "It is raining and cold".
</summary>
<div>
<p>Let P = It is raining.</p>
<p>Let Q = It is cold.</p>
<p>P ∧ Q</p>
</div>
</details>

#### Example

<details>
<summary>
Express using propositions: "Spot is a dog".
</summary>
<div>
<p>Let Spot = Is Spot.</p>
<p>Let Dog = Is a dog.</p>
<p>Spot ∧ Dog</p>
</div>
</details>

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

<details>
<summary>
Express using propositions: "It is raining or cold (possibly both)".
</summary>
<div>
<p>Let P = It is raining.</p>
<p>Let Q = It is cold.</p>
<p>P ∨ Q</p>
</div>
</details>

#### Example

Karen is an Ivy Tech student or a Purdue student.

<details>
<summary>
Express using propositions: "Karen is an Ivy Tech student or a Purdue student.".
</summary>
<div>
<p>Let KarenIvyStudent = Karen is an Ivy Tech student.</p>
<p>Let KarenPurdueStudent = Karen is a Purdue student.</p>
<p>KarenIvyStudent ∨ KarenPurdueStudent</p>
</div>
</details>

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

<details>
<summary>
Express using propositions: "Ted either went to the store or the gym.".
</summary>
<div>
<p>Let P = Ted went to the store.</p>
<p>Let Q = Ted went to the gym.</p>
<p>P ⊕ Q</p>
</div>
</details>

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

Read as "P implies Q" or "If P, then Q".

**Used When**: You hear the word "if" or "is".

#### Example

<details>
<summary>
Express using propositions: "If it is raining, then Bill uses an umbrella."
</summary>
<div>
<p>Let P = It is raining.</p>
<p>Let Q = Bill uses an umbrella.</p>
<p>P → Q</p>
</div>
</details>

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
