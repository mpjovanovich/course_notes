---
layout: base
title: Git Beyond the Basics
course: SDEV265
---

- [Resources](#resources)
- [Clone](#clone)
- [Fork](#fork)
- [Add](#add)
- [Commit](#commit)
- [Push](#push)
- [Pull](#pull)
- [Branch](#branch)
- [Merge](#merge)
- [Understanding Diffs](#understanding-diffs)
- [Resolving Merge Conflicts](#resolving-merge-conflicts)

# Resources

- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

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
- Best done through GitHub Web UI.

# Add

- **Add** is used to either add a new file for tracking or stage changes to an existing file.
- A `.gitignore` file can be used to exclude files from being tracked.

# Commit

- A **commit** is a snapshot of the repository at a specific point in time.
- If you work on a team or multiple devices, pushes are how you share your work.
- Commit message is required.
- Commit message should be descriptive and concise.
- Commit often - it's basically a save point.
- `git commit -m "message"`

Commiting does not push your changes to the remote repository. They are only **staged** for push.

# Push

- **Push** is used to upload local repository content to a remote repository (usually GitHub).
- Used to share your work with others or across devices.
- Push often if the above applies to you.
- `git push`
- `git push origin master`

# Pull

**PULL OFTEN WHEN WORKING ON A TEAM PROJECT!**

**ALWAYS PULL BEFORE YOU PUSH!**

# Branch

- A **branch** is a parallel version of a repository.
- Used to develop in isolation from **master** or **origin** branch.
  - Bug fixes
  - Feature development

_See Old Notes_: [Git Pointers](https://docs.google.com/document/d/1oBMa7d5uzV91AKu9DcJPpJFeu83DLWrOHPoj9rxUc6s/edit)

# Merge

- **Merging** takes the changes from one branch and applies them into another.
- Feature branches are merged into the master branch when complete.

_See Old Notes_: [Git Pointers](https://docs.google.com/document/d/1oBMa7d5uzV91AKu9DcJPpJFeu83DLWrOHPoj9rxUc6s/edit)

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
