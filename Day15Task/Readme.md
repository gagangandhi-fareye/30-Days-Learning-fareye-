# Yesterday we have seen Shell Scripting 

Basics of script and giving Permission.

Variable Constant and User Input(read -p)

if condition - []then fi

Package Installer Scripts

Loops (Vapis Dekhenge)

Arguments , Functions 

error handling 

AWK , SED , GREP , FIND AND its uses in Skill Scritpting 

Project- server backup 


<!-- Loops in shell scripting  -->
<!-- if we want to run anything again and again then we can use Loops -->


for ((i=0;i<10;i++))
do 
echo "Gagan is a Good Boy"
done 

if we want to access the argument that we are goiving with the name 

./hello.sh gagan

echo $1 - first argument 
echo $0 name of the file 
echo $3 - second argument

THen we have readed about funtions in shell scripting 

haldi() {
    echo "hey gagan "
    echo "yeh ek function ha"

}

<!-- Calling the funtion now  -->
haldi()

Calling a function is important for working of it.

NOw we will be leaning some concept awk grep and all 


<!-- In linux if you want to find the disk usage yu can use du -  -->


Now Doing Github Advanced 

Push and pull 

clone and fork

rebase vs merge 

stash and stash pop 

cherry picking 

squash commit vs merge commit 

<!-- THese are some concept which are important for devops-->

cloned a project from github using https 

git clone https://github.com/gagangandhi-fareye/devops-nginx-.git

git push origin main

THere are two ways for connecting with github using ssh and pat.

ssh-key-gen and along with go to settings and then use Pat

mostly using access token 


steps for ssh logi :

1st : cd .ssh 
2nd : ssh-keygen
<!-- THis will generte key one public and one private key -->
3rd : go to github and then go to setting and then go to ssh 
4th : add a public key and name it gagan-key-gen
5th : now set remote using = git remote set-url origin ssh_url 
6th : go to config file in .ssh and then add yur key name in that gagan-key

Now we will be studying about stash

