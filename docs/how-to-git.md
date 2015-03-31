how-to-git
==========

GET THE CODE AND MAKE CHANGES
-----------------------------
1. Clone the remote repository and create a branch for your changes  

```
git clone https://github.com/how-to-git.git
# Create a new branch locally on your box.
git checkout -b NEW_BRANCH_NAME 
```  

2. Add your name this `README.md` file.  (Use a text editor, IDE, etc)
3. Stage your changes to your local git repo.  

```
git add README.md 
```   

4. Stage your changes to your local git repo.
5. 
```shell
git commit -m "Your Commit Message"
```  

#### 5. Fetch & merge any new changes to the master branch (on the server) with your feature branch (on your local box).  

```shell
git pull origin master # pull does two operations (fetch and merge)
```

#### 6. If conflicts exist, resolve them  
Many ways of doing this, using IDE's, text editors, etc.
You can also use the following command line:
```shell
git mergetool
```  

Push your branch to the remote repository

```shell
git push origin NEW_BRANCH_NAME 
```

### GET YOUR CHANGES INTO `latest`  

### In GitHub (using a web browser) :

1. Browse to: https://github.com/[name]/how-to-git

1. Click "Pull requests"

1. Click "New pull request"

1. Select your feature branch in the "compare" dropdown

1. Click the "Click to create a pull request for this comparison" button.

1. Give your pull request a title and description

**Note:** *If you want more info see [this](https://wiki.nge.wdig.com/x/F5sPAw) draft.*

Sign your name bellow
---------------------

[your_name_here]
