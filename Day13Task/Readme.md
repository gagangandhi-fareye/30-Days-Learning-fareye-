# Lets complete Git and Github actions TOday.

<!-- Git  -->

Git is a version control system.

Global Information Tracker.

the person who maded the linux also created git and maded it opensource 

git --version.

make a Repository.

make a git repository.

file system 

can't create version in same file.

Maintain history of version using hash 

Hello - encode - ohlljhklsj
Decode - Hello 

we will store the hash version of the file.


Git is a version control system.

YOu can maintain the history also 

# What is a Git Repo ?
Specific folder Git is watching a project Bucket.

# Which git command is used to download a repo from the internet to yur local system ?
Git clone 

# what is the purpose of the "Head" pointer in git?
POints to the version you are currently viewing or working on.

# why it is crusial to  confgure "user.name" and "user.email" when first setting up a git on a new machine?
Provides accountability stamping every commit with author's identity.

# what is the correct two step command sequence to save a snapshot of modified files to local repo?
git add , then git commit

# which command shows the history of commit?
git log

# why is etting your nam and email cruicial in large scale environment?
for Accountability , as the log must how who made a change 

# which commands uploades local chnage to the main branch of remote repo?
git push origin main

# what is the potential consequences of deleting the .git folder?
it erases the entire git history of the project 

# what is the purpose of global configuration settings in git ?
they apply to every project on yur computer.

# to implement a new feature what is the best first step to isolate the work from the main codebase?
create and switch to new branch using git checkout -b <branch name>

# if a merge results in merge cmmit what type of merge occured?
fast-forward merge --- wrong 
Recursive Merge -- right


# what must yu do to successfully finalize a conflict resolution afteediting the file 
run git add git commit 

# what is a fast - forward merge?
A simple move forward if no other chnages happended.



<!-- Day 2 Advanced Git and Github  -->


Rebase and merge 
stash and stash pop
cherry picking 
squash commit - vs merge commit 
reset vs revert 
push / pull to github 
clone and fork 



<!-- We have studied about push and pull and then we will be  -->

Rebase and merge 

Main Branch -- first commit --- seconc commit --- THird commit ---  
commit history == using git chekout -b dev
New Branch --first commit --second commit ---THird commit ---- Fourth commit (New Commited here)  

# now this fourth commit will not be shown in the  main branch 

<!-- Now i want these changes to be merged in both branched  -->

first go to main branch 

git merge dev 

Now all the chnages of dev branch will be shown in dev also 

git log 

this is a fast forward in devops git and github


 Lets Study about Rebase 


Git Rebase 

Two branche commit history ko ek sequence me laane ka command hita h 
Merge ek branch ki hostory ko dusre ki merge krne ko 

<!-- Again Reading about this  -->


<!-- Push and Pull to GitHub 

 -->


Git Merge dev 

<!-- this is fast forwarding in github 


<!-- Lets ReadABout 

<!-- Git Rebase 

 -->


 
mene ek file bnai vim index.html

hey bro yeh kaam krdo 

git stash index.html and 
git stash pop      


this is stash and stash pop 

Revision is Importatant.

Public Speaking - Take something unique 

Everyone is same only 

# Cherry Piking 

<!-- we can use chery picking as 

<!-- we can take out the commit  -->

if there are two branched dev and prod and yu want only a single commit to be occur on prod from dev then yu can take out the cherrty-pick using id of the cmmit.

THis is actually a bug and a feature 

squash commit vs merge commit 

squash commit vs merge commit git commit dev 

git merge dev --squash 

only squash commit will be seen here so there is no other commit 

if i merge it along with this it will be creating a lot of commits right 

Reset and Revert 

Reset and Revert

IN 2019 we are working for a cient 


vcf2 fire 

Secret Key 

git revert id

git reset --soft id ke upar 

ls


