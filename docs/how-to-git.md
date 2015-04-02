how-to-git
==========

Get the code and make changes
-----------------------------

Clone the remote repository and create a branch for your changes:

```
git clone https://github.com/how-to-git.git
# Create a new branch locally on your box.
git checkout -b NEW_BRANCH_NAME 
```  

Add your name this `README.md` file.  (Use a text editor, IDE, etc) <br/>
Stage your changes to your local git repo.  

```
git add README.md 
```   

Stage your changes to your local git repo.

```
git commit -m "Your Commit Message"
```  

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
git push origin NEW_BRANCH_NAME 
```

Get yuor changes into `latest`
-----------------------------

In GitHub (using a web browser) :

- Browse to: https://github.com/[name]/how-to-git.
- Click "Pull requests".
- Click "New pull request".
- Select your feature branch in the "compare" dropdown.
- Click the "Click to create a pull request for this comparison" button.
- Give your pull request a title and description.
