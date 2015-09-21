# Shell and Bash

A **Unix shell** is a command-line interpreter or **shell** that provides a traditional user interface for the Unix operating system and for Unix-like systems. Users direct the operation of the computer by entering commands as text for a command line interpreter to execute, or by creating text scripts of one or more such commands.

**Bash** (Bourne-again Shell) is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell.Released in 1989, it has been distributed widely as the shell for the GNU operating system and as a default shell on Linux and OS X.

- [Linux Documentation Project](http://tldp.org/guides.html)

## Context

- [Configuration Files](https://github.com/valerysamovich/shell-files#configuration-files)
    - [`~/.bash_profile`](https://github.com/valerysamovich/bourne-again-shell/blob/master/files/.bash_profile)
- [Environment variables](https://github.com/valerysamovich/shell-files#file-name-completion)
- [File name completion](https://github.com/valerysamovich/shell-files#file-name-completion)
- [Aliases](https://github.com/valerysamovich/shell-files#aliases)
- [Functions](https://github.com/valerysamovich/shell-files#functions)

## Configuration Files

    ~/.bash_profile

The contents of this file are read and executed when you log into the system. Any changes you make to this file will not come into effect until you log out and log in again. It is usually a good idea to have this file execute your `~/.bashrc` file as well. Just add the line `source ~/.bashrc` to the end of this file. Beware that if you define your aliases here they will not be available in your subshells.

    ~/.bashrc
    
The contents of this file are read and executed only when you start a new subshell. Add your aliases here.

    ~/.bash_logout

This is executed when you log out. You may want to add some commands here to remove any temporary files or do any other tidying up.

## Environment variables

In general variables are set as follows: 

    foo=bar

You can check the value of the variable with: 

    echo $foo
    
For a variable to be an environment variable it must be exported. You can define it and then export it like this:

    foo=bar
    boo=woo
    export foo boo

Or you can save yourself some typing by doing it like this:

    export foo=bar
    export boo=woo

## File name completion

**File name completion** is almost identical with `t/csh`, with the following exception. If there are multiple possible completions to a file name that you are attempting to complete bash will beep. The possible completions can be listed by hitting the `"tab"` key again. (In `t/csh` you would use `^D`)

You can also have certain types of file excluded from the file name completion mechanism. Set the `FIGNORE` environment variable to a colon separated list of the file name suffixes you want ignored.

## Aliases

The **"alias"** command creates and lists aliases. Use it by itself to list your aliases, or like the following to create new aliases

    alias ll='ls -lF'
    
To remove the previously defined alias, use...

    unalias ll
    
**Warning:** unlike `csh`, bash **aliases** do not accept parameters. If you have **aliases** that use parameters you can change them to simple functions. For and example have a look in the annotated `.bashrc`.

## Functions

If you're a `t/csh` user and have grown accustomed to the convenience of using aliases with parameters, don't despair. Although bash doesn't let you use variables with aliases you can easily write functions with parameters in them.

    # Defining simple functions taking one parameter.
    cd() {
        builtin cd $1
        pwd
    }

This version replaces the builtin cd with one that prints out the current directory after the directory is changed. You can define any number of functions either directly at the command line for temporary ones, or add them to your `~/.bashrc` file.

The positional **parameters** hold the command line arguments to the function. `$0` is the name of the script or function that was invoked at the command line. `$1, $2, $3,` ... are the respective command line arguments.
