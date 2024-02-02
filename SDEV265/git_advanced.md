---
layout: base
title: Git Beyond the Basics
course: SDEV265
---

- [Resources](#resources)
- [Clone](#clone)
- [Fork](#fork)
- [Commit](#commit)
- [Push](#push)
- [Pull](#pull)
- [Branch](#branch)
- [Merge](#merge)
- [Understanding Diffs](#understanding-diffs)
- [Resolving Merge Conflicts](#resolving-merge-conflicts)

# Resources

- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)
- [Git Immersion](https://gitimmersion.com/index.html)
- [Pro Git](https://git-scm.com/book/en/v2)

# Clone

- Creates a local copy of a remote repository.
- `git clone <url>`

# Fork

<figure>
    <span>
        <img src="https://cdn.ttgtmedia.com/rms/onlineimages/cdo-git_clone_vs_fork-f_desktop.png" style="">
    </span>
</figure>

- Creates a local copy of a remote repository...
- That is (mostly) independent of the original repository.
- Used to:
  - Create a personal copy of a repository (e.g. an open source project)
  - Contribute to a project that you don't have write access to.

# Commit

# Push

# Pull

**PULL OFTEN WHEN WORKING ON A TEAM PROJECT!**

**ALWAYS PULL BEFORE YOU PUSH!**

# Branch

- A **branch** is a parallel version of a repository.
- Used to develop in isolation from **master** or **origin** branch.
  - Bug fixes
  - Feature development

# Merge

- **Merging** takes the changes from one branch and applies them into another.
- Feature branches are merged into the master branch when complete.

# Understanding Diffs

- A **diff** is a comparison between two files, or versions of a file.
- Several ways to do it:
  - `git diff`
  - GitHub Web UI
  - GitHub desktop client
  - 3rd party tools

<p class="demo">Demo:</p>

GitHub Web UI

- Add lines
- Remove lines
- Change lines

# Resolving Merge Conflicts

- A **merge conflict** occurs when competing changes are made to the same line of a file.

<p class="demo">Demo:</p>

- Demo in VS code with Git Graph
- Create and merge branch with no conflicts
- Create and merge two branches with conflicts.
