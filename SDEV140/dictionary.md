---
layout: base
title: Dictionaries
course: SDEV140
---

- [Dictionaries](#dictionaries)
  - [Creating a Dictionary](#creating-a-dictionary)
  - [Common Uses for Dictionaries](#common-uses-for-dictionaries)
  - [Dictionary Keys](#dictionary-keys)
  - [Accessing Values](#accessing-values)
  - [Modifying Values](#modifying-values)
  - [Adding new Key-Value Pairs](#adding-new-key-value-pairs)
  - [Removing Key-Value Pairs](#removing-key-value-pairs)
  - [Checking if a Key Exists](#checking-if-a-key-exists)
  - [Iterating Through a Dictionary](#iterating-through-a-dictionary)

# Dictionaries

A dictionary is a collection of key-value pairs. Dictionaries are also known as

- **Maps**
- **Hashmaps**
- **Associative arrays**

## Creating a Dictionary

- You can create a dictionary using curly braces `{}` and separating key-value pairs with colons `:`
- Keys and values can be any data type.

```python
# String / string
my_dict = {
    "key1": "value1",
    "key2": "value2",
}

# Int / int
my_dict2 = {
    1 : 31,
    2 : 29,
    3 : 31,
    12 : 31,
}

# String / int
my_dict3 = {
    "January": 31,
    "February": 29,
    "March": 31,
    "December": 31,
}
```

## Common Uses for Dictionaries

- Storing a set of items that are related to each other

```python
# Storing a set of items that are related to each other -
# creating a lookup table.
prices = {
    "apple": .75,
    "orange": .25,
    "banana": .99,
}
```

- Storing a set of items that are related to a single item

```python
# Storing a set of items that are related to a single item -
# creating a simple "object" with properties.
person = {
    "name": "John",
    "age": 25,
    "city": "New York",
}
```

## Dictionary Keys

Dictionary keys must be unique. If you try to create a dictionary with duplicate keys, the last key-value pair will overwrite the previous one:

```python
# Duplicate keys
my_dict = {
    "name": "John",
    "age": 25,
    "city": "New York",
    "name": "Jane"
}
print(my_dict)
# Output: {"name": "Jane", "age": 25, "city": "New York"}
```

## Accessing Values

You can access the values in a dictionary using the keys. Use square brackets `[]` and provide the key to retrieve the associated value:

```python
# Accessing Values
print(my_dict["name"])  # Output: John
print(my_dict["age"])   # Output: 25
```

## Modifying Values

You can modify the values associated with a key:

```python
# Modifying values
my_dict["age"] = 26
print(my_dict["age"])   # Output: 26
```

## Adding new Key-Value Pairs

You can add new key-value pairs to a dictionary:

```python
# Adding a new key-value pair
my_dict["gender"] = "Male"
print(my_dict)
# Output: {"name": "John", "age": 26, "city": "New York", "gender": "Male"}
```

## Removing Key-Value Pairs

You can remove a key-value pair from a dictionary using the `del` keyword:

```python
# Removing a key-value pair
del my_dict["city"]
print(my_dict)
# Output: {"name": "John", "age": 26, "gender": "Male"}
```

## Checking if a Key Exists

You can check if a key exists in a dictionary using the in keyword:

```python
# Checking if a key exists
if "name" in my_dict:
    print('found')
```

## Iterating Through a Dictionary

You can iterate through the keys, values, or key-value pairs of a dictionary:

```python
# Iterating through keys
for key in my_dict:
    print(key)

# Iterating through values
for value in my_dict.values():
    print(value)

# Iterating through key-value pairs
for key, value in my_dict.items():
    print(key, value)
```
