---
layout: base
title: JavaScript - JSON
course: SDEV255
---

- [JSON](#json)
  - [How is it used?](#how-is-it-used)
    - [Serialization](#serialization)
    - [Representing Objects](#representing-objects)
  - [Syntax](#syntax)
  - [Serialization](#serialization-1)
    - [Serialize to a String](#serialize-to-a-string)
    - [Deserialize from a String](#deserialize-from-a-string)

# JSON

- **JSON** stands for **JavaScript Object Notation**.
- While it has "JavaScript" in the name, JSON is **language independent**.

## How is it used?

### Serialization

To **serialize** data means to encode it as a string.

- Send data between applications or clients and servers.
- Store data in files.
- Store data in databases.

### Representing Objects

Represent objects in JavaScript.

- **Objects** are a way of grouping together related data and functions (recall from OOP).
- **Properties** are variables / constants that belong to an object.

## Syntax

Example - Basic Syntax:

```javascript
const person = {
  name: "Socrates",
  birthYear: -469,
};

// Get the name property
const name = socrates.name;
```

Example - Array as a Property:

```javascript
const person = {
  name: "Socrates",
  children: ["Lamprocles", "Sophroniscus"],
};

// Get the first child
const firstChild = socrates.children[0];
```

Example - JSON as a Property:

```javascript
const socrates = {
  name: "Socrates",
  birthYear: -469,
  children: [
    {
      name: "Lamprocles",
      birthYear: -440,
    },
    {
      name: "Sophroniscus",
      birthYear: -441,
    },
  ],
};

// Get the first child's name
const firstChildName = socrates.children[0].name;
```

## Serialization

### Serialize to a String

```javascript
const socrates = {
  name: "Socrates",
  birthYear: -469,
};

const socratesString = JSON.stringify(socrates);
```

### Deserialize from a String

```javascript
const socratesString = '{"name":"Socrates","birthYear":-469}';
const socrates = JSON.parse(socratesString);
```
