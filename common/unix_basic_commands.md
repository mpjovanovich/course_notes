---
layout: base
title: Unix Basic Commands
---

- [Unix Basic Commands](#unix-basic-commands)
  - [Navigation](#navigation)
    - [Absolute vs. Relative Paths](#absolute-vs-relative-paths)
      - [Absolute Paths](#absolute-paths)
      - [Relative Paths](#relative-paths)
    - [Directory Traversal](#directory-traversal)
      - [Find Which Directory You Are In](#find-which-directory-you-are-in)
      - [List the Contents of a Directory](#list-the-contents-of-a-directory)
      - [Change Directory](#change-directory)
  - [File Manipulation](#file-manipulation)
    - [Create a New Folder](#create-a-new-folder)
    - [Create a New File](#create-a-new-file)
    - [Copy a File](#copy-a-file)
    - [Rename a File](#rename-a-file)
    - [Move a File](#move-a-file)
    - [Delete a File](#delete-a-file)
  - [What Should I Be Able to Do?](#what-should-i-be-able-to-do)

# Unix Basic Commands

## Navigation

### Absolute vs. Relative Paths

#### Absolute Paths

- The top-most directory is called the **root directory**.
  - On Windows, this is `C:\`.
  - On Mac and Linux, this is `/`.

Absolute paths start at the root directory.

Examples:

- `C:\Users\John\Documents\test.txt`
- `/home/john/Documents/test.txt`

#### Relative Paths

Relative paths start at the current directory. This can be the working directory from the terminal, or a path relative to the current file if coding.

Examples:

- `Documents\test.txt`
- `SomeFolder/OtherFolder/test.txt`

### Directory Traversal

#### Find Which Directory You Are In

```bash
pwd
```

#### List the Contents of a Directory

```bash
ls                      # List the current directory
ls -l                   # List the current directory in long format
ls -a                   # List the current directory, including hidden files
ls /home/john/Documents # List the contents of a specific directory
```

#### Change Directory

`.` is the current directory.
`..` is the parent directory relative to the current directory.

```bash
cd ..
cd ../images
cd /home/john/Documents
```

## File Manipulation

### Create a New Folder

Will be created in the current directory ih this case.

```bash
mkdir test
```

### Create a New File

Will be created in the current directory ih this case.

```bash
touch test.txt
```

### Copy a File

First argument is the source file, second argument is the destination file.

```bash
cp test.txt test2.txt
```

### Rename a File

First argument is the old name, second argument is the new name.

```bash
mv test.txt test2.txt
```

### Move a File

First argument is the source file, second argument is the destination file.

```bash
mv test.txt ../test.txt
```

### Delete a File

```bash
rm test.txt
```

## What Should I Be Able to Do?

- List the current directory.
- List the contents of a directory.
- Navigate the directory tree using relative and absolute paths.
- Create a new folder.
- Create a new file.
- Copy a file.
- Rename a file.
- Move a file.
- Delete a file.
