# Bash

**Bash** is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell. Released in 1989, it has been distributed widely as the shell for the GNU operating system and as a default shell on Linux and OS X.

## Content

- [Search](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#search)
- [Directory](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#directory)
- [File](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#file)
- [Process](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#process)
- [Permissions](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#permissions)
- Legacy
  - [Operators](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#operators)
- [scp](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/bash.md#scp)

## Search

**Getting Help** On the command line, help is always at hand: you can either type `<command>` or `<command> --help` to receive detailed documentation about the command in question. 

```
$ history --help
```

Search Commands             | Description
----------------------------|----------------------------------------------------------------------------------
`$ find <dir> -name <file>` | Find files named `<file>` inside `<dir>` (use wildcards `*` to search for part exmpl: `file.*`)
`$ grep <text> <file>`      | Output all occurrences of <text> inside <file> (add `-i` for case-insensitivity)
`$ grep -rl <text> <dir>`   | Search for all files containing `<text>` inside `<dir>`

> `grep` stands for **global regular expression print**

**Combining Commands** If you plan to run a series of commands after another, it might be useful to combine them instead of waiting for each command to finish before typing the next one. To do so, simply separate the commands with a semicolon `;` on the same line.

Additionally, it is possible to execute a command only if its predecessor produces a certain result. Code placed after the `&&` operator will only be run if the previous command completes successfully, while the opposite `||` operator only continues if the previous command fails. The following command will create the folder “videos” only if the cd command fails (and the folder therefore doesn’t exist): `$ cd ~/videos || mkdir ~/videos`

## Directory

**Home Folder** File and directory paths can get long and awkward. If you’re addressing a path inside of your home folder though, you can make things easier by using the ~ character. So instead of writing `cd /Users/your-username/projects/` , a simple `cd ~/projects/` will do. And in case you should forget your user name, whoami will remind you. 

Directory Commands    | Description
----------------------|----------------------------------------------------------------------------------
`$ pwd`               | Display path of current working directory
`$ cd <directory>`    | Change directory to `<directory>`
`$ cd`                | ..Navigate to parent directory
`$ ls`                | List directory contents
`$ ls -la`            | List detailed directory contents, including hidden files
`$ mkdir <directory>` | Create new directory named `<directory>`

## File

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

**Output and Output with "less"** The less command can display and paginate output. This means that it only displays one page full of content and then waits for your explicit instructions. You’ll know you have less in front of you if the last line of your screen either shows the file’s name or just a colon `:`. Apart from the arrow keys, hitting `SPACE` will scroll one page forward, b will scroll one page backward, and `q` will quit the less program.

Output Commands     |  Description
--------------------|----------------------------------------------------------------------------------
`$ cat <file>`      | Output the contents of  `<file`
`$ less <file>`     | Output the contents of `<file>` using the less command (which supports pagination etc.)
`$ head <file>`     | Output the first 10 lines of `<file>`
`$ <cmd> > <file>`  | Direct the output of <cmd> into `<file>`
`$ <cmd> >> <file>` | Append the output of `<cmd>` to `<file>`
`$ <cmd1> | <cmd2>` | Direct the output of `<cmd1>` to `<cmd2>`
`$ clear`           | Clear the command line window

**Directing Output** The output of a command does not necessarily have to be printed to the command line. Instead, you can decide to direct it to somewhere else. Using the `>` operator, for example, output can be directed to a file. The following command will save the running processes to a text file in your home folder: 

```
$ ps ax > ~/processes.txt
```

It is also possible to pass output to another command using the `|` (pipe) operator, which makes it very easy to create complex operations. E.g., this chain of commands will list the current directory’s contents, search the list for PDF files and display the results with the less command:

```
$ ls | grep ".pdf" | less
```

## Process

Processes Commands        | Description
--------------------------|-----------------------------------------------------------
`$ ps ax`                 | Output currently running processes
`$ ps aux | grep 8080`    | **Display info about process 8080** (description, ID, etc.)
`$ top`                   | Display live information about currently running processes
`$ lsof -i | grep <port>` | Finding the process ID that is using a certain port
`$ lsof -i tcp:<port>`    | Finding the process **ID** by certain port   
`$ kill -9 <pid>`         | **Quit process with ID** `<pid>`

**The “ctrl” key** Various keyboard shortcuts can assist you when entering text: Hitting `ctrl+A` moves the caret to the beginning and `ctrl+E` to the end of the line. In a similar fashion, `ctrl+K` deletes all characters after and `ctrl+U` all
characters in front of the caret. Pressing `ctrl+L` clears the screen (similarly to the clear command). If you should ever want to abort a running command, `ctrl+C` will cancel it.

**The “Tab” key** Whenever entering paths and file names, the TAB key comes in very handy. It autocompletes what you’ve written, reducing typos quite efficiently. E.g. when you want to switch to a different directory, you can either type every component of the path by hand: `$ cd ~/projects/acmedesign/docs/` …or use the `TAB` key (try this yourself): `$ cd ~/pr[TAB]ojects/ac[TAB]medesign/d[TAB]ocs/` In case your typed characters are ambiguous (because “ac” could point to the “acmedesign” or the “actionscript” folder), the command line won’t be able to autocomplete. In that case, you can hit TAB twice to view all possible matches and then type a few more characters.

**The Arrow keys** The command line keeps a history of the most recent commands you executed. By pressing the `ARROW UP` key, you can step through the last called commands (starting with the most recent). `ARROW DOWN` will move forward in history towards the most recent call. Bonus tip: Calling the `history` command prints a list of all recent commands. To execute the command from history press: `$ ! <line-number>`

## Permissions

    sudo chmod 777 *

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

## Operators

    -eq 
    is equal to
    if [[ "$a" -eq "$b" ]]
    
    -ne
    is not equal to
    if [[ "$a" -ne "$b" ]]
    
    -gt
    is greater than
    if [[ "$a" -gt "$b" ]]
    
    -ge
    is greater than or equal to
    if [[ "$a" -ge "$b" ]]
    
    -lt
    is less than
    if [[ "$a" -lt "$b" ]]
    
    -le
    is less than or equal to
    if [[ "$a" -le "$b" ]]

## `scp`

`scp` allows files to be copied to, from, or between different hosts. It uses ssh for data transfer and provides the same authentication and same level of security as `ssh`.

    scp <file> <env>:~/<directory>/     # Secure copy of the local to remote host  
    scp serde.sh PROD01:~/samovich/     # Example

    scp scp <env>:~/<directory>/<file>      # Secure copy from remote to local host
    scp scp PROD01:~/files/serde.ddl.sql .  # Example
