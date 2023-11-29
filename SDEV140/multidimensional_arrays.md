---
layout: base
title: Multidimensional Arrays
course: SDEV 140
---

# Multidimensional Arrays

- A multidimensional array is an array of arrays.

## When to Use Multidimensional Arrays

- When you need to represent data that is naturally multidimensional:
  - Tables, grids, matrices (2d)
  - Cubes (3d)
  - Hypercubes (4d+)

## Python - Lists of Lists

```python
# A 2D array
my_grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Whitespace is ignored, so this can be more readable:
my_grid = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
]
```

## Accessing Values

- To access a value in a multidimensional array, you need to specify the index of each dimension.
- For example, to access the value `5` in `my_grid`:

```python
############################################
## LONG WAY - showing for demo purposes ##
############################################

# Get the list at index 1 and store in a temp variable
row = my_grid[1]
print(row) # [4, 5, 6]

# Get the value at index 1 of the list stored in row
x = row[1]
print(x) # 5

############################################
## SHORT WAY ##
############################################

# Get the value at index 1 of the list at index 1 of my_grid
x = my_grid[1][1]
print(x) # 5
```

## Modifying Values

- To modify a value in a multidimensional array, you need to specify the index of each dimension.
- For example, to change the value `5` to `99` in `my_grid`:

```python
my_grid[1][1] = 99
```

## Practical Example - Tic Tac Toe

- Initialize a 3x3 board:

```python
board = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "],
]
```

- Print the board using a loop with friendly formatting:

```python
print("-------------")
for row in board:
    print("|", end="")
    for val in row:
        print(f" {val} |", end="")
    print()
    print("-------------")
```

- Prompt the user for a row and column:

```python
print("User X")
row = int(input("Enter a row: "))
col = int(input("Enter a column: "))
```

- Place an X in the specified row and column:

```python
board[row][col] = "X"
```

- Print the board... and so on.
