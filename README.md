cheat-sheets
==================

Collection of Commands and Tips for Unix, Git, etc. 

Unix
----

**Unix** (all-caps UNIX for the trademark) is a multitasking, multiuser computer operating system that exists in many variants. Unix makes little distinction between commands (user-level programs) for system operation and maintenance (e.g. cron), commands of general utility (e.g. grep), and more general-purpose applications such as the text formatting and typesetting package.

**Getting Help** On the command line, help is always at hand: you can either type `<command>` or `<command> --help` to receive detailed documentation about the command in question. 

```
$ history --help
```

Search Commands             | Description
----------------------------|----------------------------------------------------------------------------------
`$ find <dir> -name <file>` | Find files named `<file>` inside `<dir>` (use wildcards `*` to search for part exmpl: `file.*`)
`$ grep <text> <file>`      | Output all occurrences of <text> inside <file> (add `-i` for case-insensitivity)
`$ grep -rl <text> <dir>`   | Search for all files containing `<text>` inside `<dir>`

**Combining Commands** If you plan to run a series of commands after another, it might be useful to combine them instead of waiting for each command to finish before typing the next one. To do so, simply separate the commands with a semicolon `;` on the same line.

Additionally, it is possble to execute a command only if its predecessor produces a certain result. Code placed after the `&&` operator will only be run if the previous command completes successfully, while the opposite `||` operator only continues if the previous command fails. The following command will create the folder “videos” only if the cd command fails (and the folder therefore doesn’t exist): `$ cd ~/videos || mkdir ~/videos`

**Home Folder** File and directory paths can get long and awkward. If you’re addressing a path inside of your home folder though, you can make things easier by using the ~ character. So instead of writing `cd /Users/your-username/projects/` , a simple `cd ~/projects/` will do. And in case you should forget your user name, whoami will remind you. 

Directory Commands    | Description
----------------------|----------------------------------------------------------------------------------
`$ pwd`               | Display path of current working directory
`$ cd <directory>`    | Change directory to `<directory>`
`$ cd`                | ..Navigate to parent directory
`$ ls`                | List directory contents
`$ ls -la`            | List detailed directory contents, including hidden files
`$ mkdir <directory>` | Create new directory named `<directory>`

File Commands                       | Description
------------------------------------|----------------------------------------------------------------------------------
`$ rm <file>`                       | Delete `<file>`
`$ rm -r <directory>`               | Delete `<directory>`
`$ rm -f <file>`                    | Force-delete `<file>` (add `-r` to force delete a directory)   
`$ mv <file-old\> <file-new>`       | Rename `<file-old>` to `<file-new>`
`$ mv <file> <directory>`           | Move `<file>` to `<directory>` (possibly overwriting an existing file)
`$ cp <file> <directory>`           | Copy `<file>` to `<directory>` (possibly overwriting an existing file)
`$ cp -r <directory1> <directory2>` | Copy `<directory1>` and its contents to `<directory2>` (possibly overwriting files)
`$ touch <file>`                    | Update file access & modification time (and create `<file>` if it doesn’t exist)

**Output and Output with "less"** The less command can display and paginate output. This means that it only displays one page full of content and then waits for your explicit instructions. You’ll know you have less in front of you if the last line of your screen either shows the file’s name or just a colon `:`. Apart from the arrow keys, hitting `SPACE` will scroll one page forward, b will scroll one page backward, and q will quit the less program.

Output Commands     |  Description
--------------------|----------------------------------------------------------------------------------
`$ cat <file>`      | Output the contents of  `<file`
`$ less <file>`     | Output the contents of `<file>` using the less command (which supports pagination etc.)
`$ head <file>`     | Output the first 10 lines of `<file>`
`$ <cmd> > <file>`  | Direct the output of <cmd> into `<file>`
`$ <cmd> >> <file>` | Append the output of `<cmd>` to `<file>`
`$ <cmd1> | <cmd2>` | Direct the output of `<cmd1>` to `<cmd2>`
`$ clear`           | Clear the command line window

**Directing Output** The output of a command does not necessarily have to be printed to the command line. Instead, you can decide to direct it to somewhere else. Using the > operator, for example, output can be directed to a file. The following command will save the running processes to a text file in your home folder: 

```
$ ps ax > ~/processes.txt
```

It is also possible to pass output to another command using the `|` (pipe) operator, which makes it very easy to create complex operations. E.g., this chain of commands will list the current directory’s contents, search the list for PDF files and display the results with the less command:

```
$ ls | grep ".pdf" | less
```
  
Processes Commands     | Description
-----------------------|-----------------------------------------------------------
`$ ps ax`              | Output currently running processes
`$ top`                | Display live information about currently running processes
`$ lsof -i tcp:<port>` | Finding the process that is using a certain port
`$ kill <pid>`         | Quit process with ID `<pid>`

**The “ctrl” key** Various keyboard shortcuts can assist you when entering text: Hitting `ctrl+A` moves the caret to the beginning and `ctrl+E` to the end of the line. In a similar fashion, `ctrl+K` deletes all characters after and `ctrl+U` all
characters in front of the caret. Pressing `ctrl+L` clears the screen (similarly to the clear command). If you should ever want to abort a running command, `ctrl+C` will cancel it.

**The “Tab” key** Whenever entering paths and file names, the TAB key comes in very handy. It autocompletes what you’ve written, reducing typos quite efficiently. E.g. when you want to switch to a different directory, you can either type every component of the path by hand: `$ cd ~/projects/acmedesign/docs/` …or use the `TAB` key (try this yourself): `$ cd ~/pr[TAB]ojects/ac[TAB]medesign/d[TAB]ocs/` In case your typed characters are ambiguous (because “ac” could point to the “acmedesign” or the “actionscript” folder), the command line won’t be able to autocomplete. In that case, you can hit TAB twice to view all possible matches and then type a few more characters.

**The Arrow keys** The command line keeps a history of the most recent commands you executed. By pressing the `ARROW UP` key, you can step through the last called commands (starting with the most recent). `ARROW DOWN` will move forward in history towards the most recent call. Bonus tip: Calling the `history` command prints a list of all recent commands. To execute the command from history press: `$ ! <line-number>`

**File Permissions** On Unix systems, file permissions are set using three digits: the first one representing the permissions for the owning user, the second one for its group, and the third one for anyone else. Add up the desired access rights for each digit as following:

- 4 — access/read (`r`)
- 2 — modify/write (`w`)
- 1 — execute (`x`)

Permission Commands             | Description
--------------------------------|--------------------------------------------------------------------------------------------
`$ chmod 755 <file>`            | Change permissions of `<file>` to `755`, or `*` for all files in present directory
`$ chmod -R 600 <directory>`    | Change permissions of `<directory>` (and its contents) to `600`
`$ chown <user>:<group> <file>` | Change ownership of `<file>` to `<user>` and `<group>` (add `-R` to include a directory’s contents)

For example, `755` means `rwx` for owner and `rx` for both group and anyone. `740` represents `rwx` for owner, `r` for group and no rights for other users.

Network Commands                          | Description
------------------------------------------|----------------------------------------------------------------
`$ ping <host>`                           | Ping `<host>` and display status
`$ whois <domain>`                        | Output whois information for <domain>
`$ curl -O <url-to-file>`                 | Download `<file>` (via `HTTP[S] or FTP`)
`$ ssh <username>@<host>`                 | Establish an `SSH` connection to `<host>` with user `<username>`
`$ scp <file> <user>@<host>:/remote/path` | Copy `<file>` to a remote `<host>`

Git
---

**Git** is the open source distributed version control system that facilitates GitHub activities on your laptop or desktop. This cheat sheet summarizes commonly used Git command line instructions for quick reference

```
$ git help <command>
```

**Commit Related Changes** A commit should be a wrapper for related changes. For example, fixing two different bugs should produce two separate commits. Small commits make it easier for other developers to understand the changes and roll them back if something went wrong. With tools like the staging area and the ability to stage only parts of a file, Git makes it easy to create very granular commits.

Configure and Create Commands                        | Description
-----------------------------------------------------|------------------------------------------------------------
`$ git config --global user.name "<name>"`           | Sets the name you want atached to your commit transactions
`$ git config --global user.email "<email address>"` | Sets the email you want atached to your commit transactions
`$ git config --global color.ui auto`                | Enables helpful colorization of command line output
`$ git clone ssh://user@domain.com/repo.git`         | Clone an existing repository  with entire version history
`& git init`                                         | Create a new local repository

**Commit Often** Committing often keeps your commits small and, again, helps you commit only related changes. Moreover, it allows you to share your code more frequently with others. That way it‘s easier for everyone to integrate changes regularly and avoid having merge conflicts. Having few large commits and sharing them rarely, in contrast, makes it hard to solve conflicts.

Local Changes Commands      | Description
----------------------------|--------------------------------------------------------
`$ git status`              | Changed files in your working directory
`$ git diff`                | Changes to tracked files
`$ git add <file>`          | Add specific file to the next commit 
`$ git add .`               | Add all current changes to the next commit
`$ git add -p <file>`       | Add some changes in `<file>` to the next commit
`$ git commit -a`           | Commit all local changes in tracked files
`$ git commit`              | Commit previously staged changes
`$ git commit -m "message"` | Commit previously staged changes
`$ git commit --amend`      | Change the last commit. Don‘t amend published commits!

**Don't Commit Half-Done work** You should only commit code when it‘s completed. This doesn‘t mean you have to complete a whole, large feature before committing. Quite the contrary: split the feature‘s implementation into logical chunks and remember to commit early and often. But don‘t commit just to have something in the repository before leaving the office at the end of the day. If you‘re tempted to commit just because you need a clean working copy (to check out a branch, pull in changes, etc.) consider using Git‘s «Stash» feature instead.

Commit History Commands    | Description
---------------------------|--------------------------------------------
`$ git log`                | Show all commits, starting with newest
`$ git log -p <file>`      | Show changes over time for a specific file
`$ git log --follow <file>`| Lists version history for a file, including renames
`$ git blame <file>`       | Who changed what and when in `<file>`
`$ git show <commit>`      | Outputs metadata and content changes of the specified commit

**Use Branches** Branching is one of Git‘s most powerful features - and this is not by accident: quick and easy branching was a central requirement from day one. Branches are the perfect tool to help you avoid mixing up different lines of development. You should use branches extensively in your development workflows: for new features, bug fixes, ideas…

**Wite Good Commit Messages** Begin your message with a short summary of your changes (up to 50 characters as a guideline). Separate it from the following body by including a blank line. The body of your message should provide detailed answers to the following questions:

– What was the motivation for the change?
– How does it differ from the previous implementation?

Use the imperative, present tense («change», not «changed» or «changes») to be consistent with generated messages from commands like git merge.

Branches & Tags Commands                 | Description
-----------------------------------------|------------------------------------------------------
`$ git branch`                           | List all existing branches
`$ git checkout <branch>`                | Switch HEAD branch
`$ git branch <new-branch>`              | Create a new branch based on your current HEAD
`$ git checkout --track <remote/branch>` | Create a new tracking branch based on a remote branch
`$ git branch -d <branch>`               | Delete a local branch
`$ git tag <tag-name>`                   | Mark the current commit with a tag

**Agree on Workflow** Git lets you pick from a lot of different workflows: long-running branches, topic branches, merge or rebase, git-flow… Which one you choose depends on a couple of factors: your project, your overall development and deployment
workflows and (maybe most importantly) on your and your teammates‘ personal preferences. However you choose to work, just make sure to agree on a common workflow that everyone follows.

Update & Publish Commands          | Description
-----------------------------------|------------------------------------------------------
`$ git remote -v`                  | List all currently configured remotes
`$ git remote show <remote>`       | Show information about a remote
`$ git remote add <remote> <url>`  | Add new remote repository, named `<remote>`
`$ git fetch <remote>`             | Download all changes from `<remote>`, but don‘t integrate into HEAD
`$ git pull <remote> <branch>`     | Download changes and directly merge/integrate into HEAD
`$ git push <remote> <branch>`     | Publish local changes on a remote
`$ git branch -dr <remote/branch>` | Delete a branch on the remote
`$ git push --tags`                | Publish your tag s
