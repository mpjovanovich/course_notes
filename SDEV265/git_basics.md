---
layout: base
title: Git Basics
course: SDEV265
---

- [Git](#git)
  - [What is Git?](#what-is-git)
  - [GitHub](#github)
  - [Git Repositories](#git-repositories)
  - [How to Interface with Git](#how-to-interface-with-git)
    - [The Browser](#the-browser)
    - [VS Code Source Control Panel](#vs-code-source-control-panel)
    - [Terminals and Shells](#terminals-and-shells)

# Git

![Git](https://git-scm.com/images/logo@2x.png)

Git is a powerful tool that you'll almost certainly come across in your career.

## What is Git?

**Git** is a program that runs on a computer. It needs to be installed like any other program:

- [Git (installation and documentation)](https://git-scm.com/)

Git is a **version control system (VCS)**:

- Stores files and their history
- Tracks changes to files over time
- Allow for point in time recovery and comparison
- Allows more than one person to work on (or examine) the same file at the same time.

## GitHub

<figure>
    <span>
        <img src="https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png" style="width: 20%;">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

**GitHub** is a website that hosts Git repositories.

GitHub is not the same as Git.

## Git Repositories

A **repository** is a collection of files and their history.

- Should be one repository per project.

- Roughly equivalent to a folder on your computer.

- A user can have many repositories:

![GitHub Repositories](images/github_repos.png)

Files can be uploaded to the repository via drag and drop, or the upload button:

![GitHub Upload](images/github_repos_2.png)

## How to Interface with Git

### The Browser

- Recommended for beginners

### VS Code Source Control Panel

The GUI for Git can be accessed in the VS Code Source Control Panel:

![VS Code Source Control](images/vscode_source_control_1.png)

- The number in the circle indicates the number of files that have been changed.
- A commit message is required before you press the button.

After committing, you can push to GitHub with the Sync button:

![VS Code Source Control](images/vscode_source_control_2.png)

### Terminals and Shells

Git commands are in the form `git [your_command_here] --[optional_flags_here]`.

Git commands are typed into a **terminal** which runs a **shell**.

- A **terminal** provides a user interface into a shell.

  - This is what you type commands into.
  - Like the part of the car that you see and interact with.

- A **shell** is a program that executes text **commands**.

  - This is what actually runs the command.
  - Like the "engine" of a car.
  - Usually use `bash` or `zsh` shells.

The CLI for Git can be accessed in a VS Code terminal:

- `Ctrl + ~` or `View > Terminal`.

Make sure that you are in the root directory of your project:

- Use the `pwd` command to see the current directory.

Make sure that you have the correct shell selected, _bash_ or _zsh_:

![VS Code Terminal](images/vscode_terminal_2.png)

![VS Code Terminal](images/vscode_terminal_1.png)
