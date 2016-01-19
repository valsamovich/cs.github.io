# Intellij IDEA

**IntelliJ IDEA** is a Java integrated development environment (IDE) for developing computer software. It is developed by JetBrains (formerly known as IntelliJ), and is available as an Apache 2 Licensed community edition, and in a proprietary commercial edition.

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

## Selection

Vertical selection: press `alt` and drag cursor (by `left click`).
