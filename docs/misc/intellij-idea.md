# Intellij IDEA

**IntelliJ IDEA** is a Java integrated development environment (IDE) for developing computer software. It is developed by JetBrains (formerly known as IntelliJ), and is available as an Apache 2 Licensed community edition, and in a proprietary commercial edition.

*Best Quote* (why can't IntelliJ work with single files?): 

        "No, it not possible. IDEA it's not easy text editor like Sublime Text or Notepad++. 
        But you can create project with simple structure and open(drag and drop) or create 
        there any files."

- [JetBrains](https://www.jetbrains.com/)
- [IntelliJ IDEA](https://www.jetbrains.com/idea/)

## Context

- [Set SDK for project](https://github.com/valerysamovich/engineering/blob/master/docs/how/intellij-idea.md#set-sdk-for-project)
- [Override console buffer size](https://github.com/valerysamovich/engineering/blob/master/docs/how/intellij-idea.md#override-console buffer-size)

## Set SDK for project

Select the installation path of interpreter, for example **Python**:

    File -> Project Structure -> Project -> Project SDK -> new
    # for example, C:\Python26 in windows and /usr/bin/python2.7 in Linux

## Override console buffer size

`IDEA_HOME\bin\idea.properties`
    
    #-----------------------------------------------------------------------
    # This option controls console cyclic buffer: keeps the console output size not higher than the specified buffer size (Kb). Older lines are deleted.
    # In order to disable cycle buffer use idea.cycle.buffer.size=disabled
    idea.cycle.buffer.size=1024
    
**Override console cycle buffer size** will override the size specified in `IDEA_HOME\bin\idea.properties`

    Preferences -> Editor -> General -> Console -> Override console cycle buffer size

## Vertical selection (Windows)

Vertical selection: press `alt` and drag cursor (by `left click`).

## Modules
To add project as module to the main project: `File/Project Structure/` click plus `+` choose `new` or `import`.

## Switch CMD to Git BASH on Windows

1. File > Settings
2. Search for `Terminal` in seach bar
3. Update **Shell path** from `cmd.exe` > `C:\Program Files\Git\bin\sh.exe --login -i` or location of the `~\Git\bin\sh.exe`
4. Update **Tab name** from `local` to `Git Bash`
