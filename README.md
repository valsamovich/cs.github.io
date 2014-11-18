cheat-sheets
==================

Description

Terminal
--------

**Getting Help** On the command line, help is always at hand: you can either type man `<command>` or `<command> --help` to receive detailed documentation about the command in question.

**File Permissions** On Unix systems, file permissions are set using three digits: the first one representing the permissions for the owning user, the second one for its group, and the third one for anyone else. Add up the desired access rights for each digit as following:

- 4 — access/read (r)
- 2 — modify/write (w)
- 1 — execute (x)

For example, `755` means `rwx` for owner and `rx` for both group and anyone. `740` represents `rwx` for owner, `r` for group and no rights for other users.

Directories | Output | Files | Search | Network | Permissions | Processes
------------|--------|-------|--------|---------|-------------|----------
`$ pwd`
display working directory

Git
---
