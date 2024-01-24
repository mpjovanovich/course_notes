---
layout: base
title: JavaScript - JSON
course: SDEV255
---

- [JSON](#json)

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

- **Objects** are a way of grouping together related data and functions.
- **Properties** are variables / constants that belong to an object.

## Syntax

Example - Basic Syntax:

```javascript
const person = {
  name: "Socrates",
  birthYear: -469,
};
```

Example - Array as a Property:

```javascript
const person = {
  name: "Socrates",
  children: ["Lamprocles", "Sophroniscus"],
};
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
