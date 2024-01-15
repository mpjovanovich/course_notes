---
layout: base
title: Computer Orientation
---

- [Computer Orientation](#computer-orientation)
  - [Naming Files and Folders](#naming-files-and-folders)
  - [File Extensions](#file-extensions)
  - [Directory Structure](#directory-structure)
    - [Directory Separator](#directory-separator)
    - [Root Directory](#root-directory)
  - [Absolute vs. Relative Paths](#absolute-vs-relative-paths)
    - [Absolute Paths](#absolute-paths)
    - [Relative Paths](#relative-paths)

# Computer Orientation

![Messy Desktop](images/messy_desktop.png)

## Naming Files and Folders

Spaces in files and directories can be a cause of bugs, and generally make life more difficult for programmers. Instead:

**Good Habits:**

- Use underscores (`_`) or _CamelCase_ instead of spaces.

## File Extensions

The file extension allows a file to be associated with a specific program. For example:

- `.txt` is associated with a text editor.
- `.html` is associated with a web browser
- `.docx` is associated with Microsoft Word.

You can change the file extension to whatever you want (despite warnings you may receive).

<p class="demo">Demo</p>

- Create a new file called `test.txt`.
- Remove the extension.
- Open the file in a text editor.

**Good Habits:**

- Make sure file extensions are visible. Windows hides them by default.
- Be sure to check the file extension prior to saving.

## Directory Structure

- _Directory_ and _folder_ mean the same thing.
- Directories are containers for storing other files.
- They have a hierarchical structure, like a family tree.

<p class="demo">Demo:</p>

Use tree terminiology to draw and describe the following directory structure, from [Game of Life - React](https://github.com/mpjovanovich/life_react)

In particular:

- Root directory?
- Sibling directories?
- Child directories?
- Parent directories?
- Ancestor directories?
- Descendant directories?

```
src
├── App.tsx
├── Cell.tsx
├── GameGrid.tsx
├── Life.ts
├── assets
│   ├── desert_life_logo.webp
│   ├── favicon.ico
│   └── hc_mask_20.svg
├── index.css
├── main.tsx
└── vite-env.d.ts
```

### Directory Separator

### Root Directory

- The top-most directory is called the _root_ directory.
  - On Windows, this is `C:\`.
  - On Mac and Linux, this is `/`.

**Good Habits:**

- Use a hierarchicial directory structure where possible.
- Use a consistent naming convention.

## Absolute vs. Relative Paths

### Absolute Paths

Path starts at the root directory.

Examples:

- `C:\Users\John\Documents\test.txt`
- `/home/john/Documents/test.txt`

### Relative Paths

Path starts at the current directory. This can be the working directory from the terminal, or a path relative to the current file if coding.

Examples:

- `Documents\test.txt`
- `SomeFolder/OtherFolder/test.txt`
