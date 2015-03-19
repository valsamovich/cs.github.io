Java 
----

Setting JAVA_HOME path from CMD (Programmaticly).

Command                       | Description
------------------------------|-----------------------------------------------------------------------------
`echo %JAVA_HOME%`            | Validate `JAVA_HOME`
`setx -m JAVA_HOME "<PATH>"`  | Set `JAVA_HOME`. `<PATH>` - example: `"C:\Program Files\Java\jdk1.7.0_71"`
`%PATH%`                      | Validate `PATH`
`setx -m PATH "%PATH%;<PATH>` | Set `PATH`. `PATH` - example: `"C:\Program Files\Java\jdk1.7.0_71\bin"`

**Note:** Run the Command Prompt as Administrator. When you change an environment variable by using the Windows setx command, you must close and reopen the Command Prompt window for the change to take effect.

In computer **programming**, a [**declaration**](http://en.wikipedia.org/wiki/Declaration_%28computer_programming%29) specifies properties of an identifier: it declares what a word (identifier) means. **Declarations** are most commonly used for functions, variables, constants, and classes, but can also be used for other entities such as enumerations and type definitions.

In computer science, an [**implementation**](http://en.wikipedia.org/wiki/Implementation) is a realization of a technical specification or algorithm as a **program**, software component, or other computer system through computer **programming** and deployment. Many implementations may exist for a given specification or standard.

IntelliJ IDEA and Eclipse Shortcuts
-----------------------------------

> In computer programming, [**Eclipse**](https://eclipse.org/home/index.php) is an integrated development environment (IDE). It contains a base workspace and an extensible plug-in system for customizing the environment. Written mostly in Java. Eclipse may be used to develop applications in other programming languages: Ada, ABAP, C, C++, COBOL, Fortran, Haskell, JavaScript, Lasso, Natural, Perl, PHP, Prolog, Python, R, Ruby (including Ruby on Rails framework), Scala, Clojure, Groovy, Scheme, and Erlang.

> [**IntelliJ IDEA**](https://www.jetbrains.com/idea/) is a Java IDE by [JetBrains](http://en.wikipedia.org/wiki/JetBrains).

Eclipse            |    IntelliJ IDEA         |    Description
-------------------|--------------------------|------------------------------------------
`F4`               | `ctrl+h`                 | show the type hierarchy
`crl+alt+g`        | `ctrl+alt+F7`            | find usages
`ctrl+shift+u`     | `ctrl+f7`                | finds the usages in the same file
`alt+shift+r`      | `shift+F6`               | rename
`ctrl+shift+r`     | `ctrl+shift+N`           | find file `/` open resource
`ctrl+shift+x, j`  | `ctrl+shift+F10`         | run (java program)
`ctrl+shift+o`     | `ctrl+alt+o`             | organize imports
`ctrl+o`           | `ctrl+F12`               | show current file structure `/` outline
`ctrl+shift+m`     | `ctrl+alt+V`             | create local variable refactoring
`syso ctrl+space`  | `sout ctrj+j`            | `System.out.println(“”)`
`main Ctrl+Space`  | `psvm`                   | To create main() method
`alt + up/down`    | `ctrl + shift + up/down` | move lines
`ctrl + d`         | `ctrl + y`               | delete current line
`???`              | `alt + h`                | show subversion history
`ctrl + h`         | `ctrl + shift + f`       | search (find in path)
`ctrl + 1`         | `ctrl + alt + v`         | introduce local variable
`alt + shift + s`  | `alt + insert`           | generate getters / setters
`ctrl + shift + f` | `ctrl + alt + l`         | format code
`ctrl + y`         | `ctrl + shift + z`       | redo
`ctrl + shift + c` | `ctrl + /`               | comment out lines
`ctrl + alt + h`   | `ctrl + alt + h` (same!) | show call
`none ?`           | `ctrl + alt + f7`        | to jump to one of the callers of a method
`ctrl + shift + i` | `alt + f8`               | evaluate expression (in debugger)
`F3`               | `ctrl + b`               | go to declaration (e.g. go to method)
