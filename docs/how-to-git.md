How to Git?
==========

Forking Workflow
----------------

1. [Fork a repo](https://help.github.com/articles/fork-a-repo/) (repository) by clicking fork button on top right side of the page.

2. **Clone** the remote repository to your local machine.

  ```sh
  git clone https://github.com/[usename]/engineering.git
  ```

3. [Configuring a remote for a fork](https://help.github.com/articles/configuring-a-remote-for-a-fork/). To sync changes you make in a fork with the original repository, you must configure a remote that points to the upstream repository in Git:

  ```sh
  cd engineering
  git remote add upstream clone https://github.com/[usename]/engineering.git
  ```

4. Create a branch for a new check (optional):

  ```sh
  git branch [new-branch]
  git checkout [new-banch]
  ```

  ```sh
  git checkout -b [new-branch]
  ```

5. **Develop** on `[new-branch]` only. Do not merge the **upstream** master with developement branch!

6. **Commit** changes to `[new-branch]`:

  ```sh
  git status
  git add . 
  git commit -m "[commit message]"
  ```

7. **Push** brnach or changes to GitHub, to allow you open the PR for upstream:

  ```sh
  git push origin [new-branch]
  ```
  > Repeat steps 5-7 till development is complete.
  
8. Open a **PR** from fork to the `upstream` on **GitHub** website.

  - Browse to: `https://github.com/[usename]/how-to-git`.
  - Click "Pull requests".
  - Click "New pull request".
  - Select your feature branch in the "compare" dropdown.
  - Click the "Click to create a pull request for this comparison" button.
  - Give your pull request a title and description.

9. After PR merged, **fetch** and **merge** upstream changes that were done by you or other contributors:

  ```sh
  git fetch upstream
  git checkout master
  git merge upstream/master
  ```
  > This is also can be done by one command(`pull` does two operations `fetch` and `merge`):
  
  ```sh
  git pull origin master 
  ```
10. **Push** the changes to your origin to keep in sync:

  ```sh
  git push origin master
  ```

