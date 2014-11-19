cheat-sheets
==================

Command Line Cheat Sheet and Tips
---------------------------------

**Getting Help** On the command line, help is always at hand: you can either type man `<command>` or `<command> --help` to receive detailed documentation about the command in question.

**Combining Commands** If you plan to run a series of commands after another, it might be useful to combine them instead of waiting for each command to finish before typing the next one. To do so, simply separate the commands with a semicolon `( ; )` on the same line.

Additionally, it is possble to execute a command only if its predecessor produces a certain result. Code placed after the `&&` operator will only be run if the previous command completes successfully, while the opposite `||` operator only continues if the previous command fails. The following command will create the folder “videos” only if the cd command fails (and the folder therefore doesn’t exist): `$ cd ~/videos || mkdir ~/videos`

**The “ctrl” key** Various keyboard shortcuts can assist you when entering text: Hitting `ctrl+A` moves the caret to the beginning and `ctrl+E` to the end of the line. In a similar fashion, `ctrl+K` deletes all characters after and `ctrl+U` all
characters in front of the caret. Pressing `ctrl+L` clears the screen (similarly to the clear command). If you should ever want to abort a running command, `ctrl+C` will cancel it.

**The “Tab” key** Whenever entering paths and file names, the TAB key comes in very handy. It autocompletes what you’ve written, reducing typos quite efficiently. E.g. when you want to switch to a different directory, you can either type every component of the path by hand: `$ cd ~/projects/acmedesign/docs/` …or use the TAB key (try this yourself): `$ cd ~/pr[TAB]ojects/ac[TAB]medesign/d[TAB]ocs/` In case your typed characters are ambiguous (because “ac” could point to the “acmedesign” or the “actionscript” folder), the command line won’t be able to autocomplete. In that case, you can hit TAB twice to view all possible matches and then type a few more characters.

**The Arrow keys** The command line keeps a history of the most recent commands you executed. By pressing the `ARROW UP` key, you can step through the last called commands (starting with the most recent). `ARROW DOWN` will move forward in history towards the most recent call. Bonus tip: Calling the `history` command prints a list of all recent commands. To execute the command press: `$ ! <line-number>`

**File Permissions** On Unix systems, file permissions are set using three digits: the first one representing the permissions for the owning user, the second one for its group, and the third one for anyone else. Add up the desired access rights for each digit as following:

- 4 — access/read (r)
- 2 — modify/write (w)
- 1 — execute (x)

Commands                           | Description
-----------------------------------|----------------------------------------------------------------------------------
$ chmod 755 <file>                 | Change permissions of <file> to 755, or * for all files in present directory
$ chmod -R 600 <directory>         | Change permissions of <directory> (and its contents) to 600
$ chown <user>:<group> <file>      | Change ownership of <file> to <user> and <group> (add -R to include a directory’s
contents)

For example, `755` means `rwx` for owner and `rx` for both group and anyone. `740` represents `rwx` for owner, `r` for group and no rights for other users.



Directories               | Output | Files | Search | Network | Permissions | Processes
--------------------------|--------|-------|--------|---------|-------------|----------
`$ pwd`                   |
Display working directory |
--------------------------|--------|-------|--------|---------|-------------|----------
`$ cd <directory>`    
Change directory 

Directories               | Output | Files | Search | Network | Permissions | Processes
--------------------------------------------|--------|-------|--------|---------|-------------|----------
$ pwd
Display path of current working directory
$ cd <directory>
Change directory to <directory>
$ cd ..
Navigate to parent directory
$ ls
List directory contents
$ ls -la
List detailed directory contents, including
hidden files
$ mkdir <directory>
Create new directory named <directory>




Git
---
