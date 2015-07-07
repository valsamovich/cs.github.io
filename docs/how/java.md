Java 
----

Setting `JAVA_HOME` path from CMD (Programmaticly).

Command                       | Description
------------------------------|-----------------------------------------------------------------------------
`echo %JAVA_HOME%`            | Validate `JAVA_HOME`
`setx -m JAVA_HOME "<PATH>"`  | Set `JAVA_HOME`. `<PATH>` - example: `"C:\Program Files\Java\jdk1.7.0_71"`
`%PATH%`                      | Validate `PATH`
`setx -m PATH "%PATH%;<PATH>` | Set `PATH`. `PATH` - example: `"C:\Program Files\Java\jdk1.7.0_71\bin"`

**Note:** Run the Command Prompt as Administrator. When you change an environment variable by using the Windows setx command, you must close and reopen the Command Prompt window for the change to take effect.

In computer **programming**, a [**declaration**](http://en.wikipedia.org/wiki/Declaration_%28computer_programming%29) specifies properties of an identifier: it declares what a word (identifier) means. **Declarations** are most commonly used for functions, variables, constants, and classes, but can also be used for other entities such as enumerations and type definitions.

In computer science, an [**implementation**](http://en.wikipedia.org/wiki/Implementation) is a realization of a technical specification or algorithm as a **program**, software component, or other computer system through computer **programming** and deployment. Many implementations may exist for a given specification or standard.
