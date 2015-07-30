# Git


> **Git** is the open source distributed version control system that facilitates **GitHub** activities on your laptop or desktop. This cheat sheet summarizes commonly used Git command line instructions for quick reference. Small commits make it easier for other developers to understand the changes and roll them back if something went wrong.

- [Git](https://git-scm.com/) official website
- [Gitignore](https://www.gitignore.io/) create useful `.gitignore` files for your project
- [Githut](http://githut.info/) is a place to discover languages GitHub

## Content

- [Configure Tooling](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#configure-tooling)
- [Create Repositories](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#create-repositories)
- [Make changes](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#make-changes)
- [Group Changes](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#group-changes)
- [Refactor Filenames](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#refactor-filenames)
- [Suppress Tracking](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#suppress-tracking)
- [Save Fragments](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#save-fragments)
- [Review History](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#review-history)
- [Redo Commits](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#redo-commits)
- [Synchronize changes](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/git.md#synchronize-changes)

```
$ git help <command>
```

## Configure Tooling

Configure user information for all local repositories.

Command                                              | Description
-----------------------------------------------------|------------------------------------------------------------
`$ git config --global user.name "[name]"`           | Sets the name you want attached to your commit transactions
`$ git config --global user.email "[email address]"` | Sets the email you want attached to your commit transactions
`$ git config --global color.ui auto`                | Enables helpful colorization of command line output

## Create Repositories

Start a new repository or obtain one from an existing URL.

Command                     | Description
----------------------------|-------------------------------------------------------
`$ git init [project-name]` | Creates a new local repository with the specified name
`$ git clone [url]`         | Downloads a project and its entire version history

## Make changes

Review edits and craf a commit transaction. **Wite Good Commit Messages** Begin message with a short summary of your changes (up to 50 characters as a guideline). *Commit Often** Committing often keeps your commits small and, again, helps you commit only related changes. Moreover, it allows you to share your code more frequently with others. That way it‘s easier for everyone to integrate changes regularly and avoid having merge conflicts. Having few large commits and sharing them rarely, in contrast, makes it hard to solve conflicts.

Command                                   | Description
------------------------------------------|-----------------------------------------------------------------
`$ git status`                            | Lists all new or modified files to be committed
`$ git add [file]`                        | Snapshots the file in preparation for visioning
`$ git reset [file]`                      | Unstages the file, but preserve its contents
`$ git diff`                              | Shows file differences not yet staged
`$ git diff --staged`                     | Shows file differences between staging and the last file version
`$ git commit -m "[descriptive message]"` | Records file snapshots permanently in version history

## Group Changes

Name a series of commits and combine completed efforts **Use Branches** Branching is one of Git‘s most powerful features - and this is not by accident: quick and easy branching was a central requirement from day one. Branches are the perfect tool to help you avoid mixing up different lines of development. 

Command                         | Description
--------------------------------|---------------------------------------------------------------------
`$ git branch`                  | Lists all local branches in the current repository
`$ git branch [branch-name]`    | Creates a new branch
`$ git checkout [branch-name]`  | Switches to the specified branch and updates the working directory
`$ git merge [branch]`          | Combines the specified branch’s history into the current branch
`$ git branch -d [branch-name]` | Deletes the specified branch
`$ git rebase [branch]`         | Rebase current **HEAD** onto `[branch]`. Don't rebase published commits.
`$ git rebase --abort`          | Abort a rebase
`$ git rebase --continue`       | Continue a rebase after resolving conflicts
`$ git mergetool`               | Use configured merge tool to solve conflicts


## Refactor Filenames

Relocate and remove versioned files.

Command                                   | Description
------------------------------------------|---------------------------------------------------------------------
`$ git rm [file]`                         | Deletes the file from the working directory and stages the deletion
`$ git rm --cached [file]`                | Removes the file from version control but preserves the file locally
`$ git mv [file-original] [file-renamed]` | Changes the file name and prepares it for commit

## Suppress Tracking

Exclude temporary files and paths.

Command                                               | Description
------------------------------------------------------|---------------------------------------------------------------
`$ git ls-files --other --ignored --exclude-standard` | Lists all ignored files in this project
`*.log` `build/` `temp-*`                             | A text file named .gitignore suppresses accidental versioning offiles and paths matching the specified paterns
`$ git ls-files --other --ignored --exclude-standard` | Lists all ignored files in this project

## Save Fragments

Shelve and restore incomplete changes.

Command            | Description
-------------------|----------------------------------------------
`$ git stash`      | Temporarily stores all modified tracked files
`$ git stash list` | Lists all stashed change sets
`$ git stash pop`  | Restores the most recently stashed files
`$ git stash drop` | Discards the most recently stashed change set

## Review History

Browse and inspect the evolution of project files.

Command                                       | Description
----------------------------------------------|-------------------------------------------------------------
`$ git log`                                   | Lists version history for the current branch
`$ git log --follow [file]`                   | Lists version history for a file, including renames
`$ git diff [first-branch]...[second-branch]` | Shows content differences between two branches
`$ git show [commit]`                         | Outputs metadata and content changes of the specified commit

## Redo Commits

Erase mistakes and craf replacement history.

Command                       | Description
------------------------------|---------------------------------------------------------------
`$ git reset [commit]`        | Undoes all commits afer `[commit]`, preserving changes locally
`$ git reset --hard [commit]` | Discards all history and changes back to the specified commit

## Synchronize changes

Register a repository bookmark and exchange version history.

Command                           | Description
----------------------------------|-----------------------------------------------------
`$ git fetch [bookmark]`          | Downloads all history from the repository bookmark
`$ git merge [bookmark]/[branch]` | Combines bookmark’s branch into current local branch
`$ git push [alias] [branch]`     | Uploads all local branch commits to GitHub
`$ git pull`                      | Downloads bookmark history and incorporates changes
