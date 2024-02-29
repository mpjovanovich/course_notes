---
layout: base
title: Flowcharts
course: SDEV120
---

- [Arrays](#arrays)
  - [Definitions](#definitions)
  - [Manipulating Arrays](#manipulating-arrays)
    - [Creating an Array](#creating-an-array)
    - [Adding to an Array](#adding-to-an-array)
    - [Accessing an Array Element](#accessing-an-array-element)
    - [Reassigning an Array Element](#reassigning-an-array-element)
    - [Getting the Length of an Array in Python](#getting-the-length-of-an-array-in-python)
  - [Looping Through Arrays](#looping-through-arrays)
    - [Looping by Index](#looping-by-index)
    - ["foreach" Loops](#foreach-loops)
  - [Strings are Arrays!](#strings-are-arrays)
  - [Ordered Lists](#ordered-lists)
    - [Getting item(s) from an ordered list by index.](#getting-items-from-an-ordered-list-by-index)
    - [Getting item(s) from an ordered list by range.](#getting-items-from-an-ordered-list-by-range)
  - [Searching Arrays](#searching-arrays)
    - [Linear Search](#linear-search)
    - [Binary Search](#binary-search)

<figure>
    <span>
        <img src="https://imgs.xkcd.com/comics/donald_knuth.png" style="">
    </span>
</figure>

# Arrays

## Definitions

- An array is a series or list of values in computer memory.
- An array is a way to store multiple related variables of the same data type.
- An array is a container with n elements, where n is the length of the array.

## Manipulating Arrays

The things in the array are called **elements**.

Each element occupies a position in the array:

- **index**
- **address**
- **position**

In most programming languages, the first element is at position 0. We call this a **zero-based array**.

### Creating an Array

```python
## Initialize an empty array
arr = []
```

```python
## Initialize an array with values
arr = ['a','b','c','d']
```

### Adding to an Array

```python
## Add an element to the end of the array
arr = []
arr.append( 'a' )
# Array now contains: ['a']
```

### Accessing an Array Element

```python
## Access an element by index
arr = ['a','b','c','d']
print( arr[0] ) # Will print 'a'
print( arr[1] ) # Will print 'b'
```

### Reassigning an Array Element

```python
## Reassign an element by index
arr = ['a','b','c','d']
arr[0] = 'z'
print( arr[0] ) # Will print 'z'
```

### Getting the Length of an Array in Python

We can use the “len” function to get the length of an array.

```python
## After this code is executed the “length” variable will hold an integer
## with the number of elements of the array
arr = ['a','b','c','d']
length = len( arr )
print(length) # Will print 4
```

```python
## Get the last element of an array
arr = ['a','b','c','d']
last_element = arr[ len( arr ) - 1 ]
print( last_element ) # Will print 'd'
```

## Looping Through Arrays

### Looping by Index

We can use a counter variable to access an array element by position as we move through a loop.

```python
arr = ['a','b','c','d']
## We can create a counter variable that we can then use to
## access an element by index - by its position within the array.
for i in range( len( arr ) ):
    print( 'The current index is: ' + str(i) )
    print( 'The array value at this position is: ' + arr[i] )
```

- <span class="demo">demo:</span> [m06_array_index_with_loop.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/m06_array_index_with_loop.py)

### "foreach" Loops

- Many languages offer a `foreach` loop.
- Convenient way to iterate over a collection of data without index and counter variable.

```python
arr = ['a','b','c','d']

# We can call "letter" anything we want.
for letter in arr:
    print( letter ) # prints: a, b, c, d
```

## Strings are Arrays!

Anything we can do with an array, we can do with a string.

```python
longWord = ['Acetylcholinergic neurotransmission',]

for letter in longWord:
    print( letter )
```

<span class="demo">demo:</span> Write a program that prompts the user to enter an animal name. Then prompt to enter a second animal name. If the entries are the same print “Match”, otherwise print “Not a match”.

- [string_comparison.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/string_comparison.py)

## Ordered Lists

### Getting item(s) from an ordered list by index.

<span class="demo">demo:</span> [get_nth_largest_city.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/get_nth_largest_city.py)

### Getting item(s) from an ordered list by range.

<span class="demo">demo:</span> [get_top_n_largest_cities.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/get_top_n_largest_cities.py)

<span class="demo">demo:</span> [get_top_n_smallest_cities.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/get_top_n_smallest_cities.py)

<span class="demo">demo:</span> [alphabet_get_every_nth.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/alphabet_get_every_nth.py)

## Searching Arrays

### Linear Search

Algorithm:

- Initialize a flag variable - a boolean variable that tells whether the item was found. This will start with a value of “False”.
- Use a loop to iterate through each item, and compare against the search target.
- If the search target is found then set the flag variable to “True”.

<span class="demo">demo:</span> [linear_search.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/linear_search.py)

### Binary Search

More efficient than linear search, but the array must be sorted.

Algorithm:

- Check middle element of array.
- If the target is the middle element, then we are done.
- If the target is less than the middle element
  - Start over, searching the left half of the array.
- If the target is greater than the middle element
  - Start over, searching the right half of the array.
- Repeat until the target is found or the array is empty.

TODO:

<span class="demo">demo:</span> [binary.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/binary.py)

<!-- # Parallel Arrays

## Definition

**Parallel arrays** are a set of arrays that store related information for a given index / position.

E.g.: Here are two arrays below - name and age. The parallel arrays give the data a table structure. By looking at some index into the arrays we can extract a “row” of data which are related.

| index |      name       | age    |
| :---- | :-------------: | :----- |
| 0     |   Terri Gourd   | 23     |
| 1     | Jonny Chocolate | 17     |
| 2     |  Sven Iglinsin  | 34     |
| 3     |      The Q      | 999999 |

This example had just two arrays, but there may be as many as needed.

<span class="demo">demo:</span> Write a program that first prompts a user to enter the names of a student then the student’s final grade. Do this until the user types “done”. Print each student’s name and total score and exit the program.

- demo: m06_enter_student_grades.py
- [m06_enter_student_grades.py](https://github.com/mpjovanovich/ivy_tech/blob/main/SDEV120_Computing_Logic/m06_string_comparison.py)

## Removing and Updating From Parallel Arrays

When we delete from a set of parallel arrays, all arrays need a value removed (by index).

- We can’t use the “remove” method in this case - we don’t know what the corresponding values for the parallel arrays will be.
- We can instead use the Python index function to find the index of a given value.

```python
## After this code is executed the "target_index" variable will hold an integer
## with the array index of the argument that was passed in
arr = ['a','b','c','d']
target_index = arr.index( 'd' )
```

<span class="demo">demo:</span> m06_update_array_parallel.py

<span class="demo">demo:</span> m06_remove_array_parallel.py

- How do the indexes of other elements change if we delete one value?
- If I remove Alf, what is the index of Cory? -->
