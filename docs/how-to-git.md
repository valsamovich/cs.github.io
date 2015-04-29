How to Git?
==========

Forking Workflow
----------------

1. **Fork** the repository (repo) by clicking fork button on top right side of the page.
- [https://help.github.com/articles/fork-a-repo/](https://help.github.com/articles/fork-a-repo/)

2. **Clone** the remote repository to your local machine.

```sh
git clone https://github.com/[usename]/engineering.git
```

3. Configure remotes:
- [Configuring a remote for a fork](https://help.github.com/articles/configuring-a-remote-for-a-fork/)
- [Syncing a fork](https://help.github.com/articles/syncing-a-fork/)

```sh
cd engineering
git remote add upstream clone https://github.com/[usename]/engineering.git
```
**Add** your name to the buttom of this `how-to-git.md` file.  (Use a text editor, IDE, etc) and **commit** the changes.

```
# Add your changes to your local git repo.  
git add README.md 

# Stage your changes to your local git repo.
git commit -m "[commit message]"

# Push the cahnges to the origin
git push origin master
```
**Open Pull Request** (PR) agains `upstream master`
Fetch & merge any new changes to the master branch (on the server) with your feature branch (on your local box).  






```
git pull origin master # pull does two operations (fetch and merge)
```

If conflicts exist, resolve them.
Many ways of doing this, using IDE's, text editors, etc.
You can also use the following command line:

```
git mergetool
```  

Push your branch to the remote repository

```
git push origin [new branch name] 
```

Get yuor changes into `upstream`
-----------------------------

In GitHub (using a web browser) :

- Browse to: https://github.com/[name]/how-to-git.
- Click "Pull requests".
- Click "New pull request".
- Select your feature branch in the "compare" dropdown.
- Click the "Click to create a pull request for this comparison" button.
- Give your pull request a title and description.
