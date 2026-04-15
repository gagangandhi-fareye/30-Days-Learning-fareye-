# Today We will be starting Docker.
# Before that we have learned that In our current orgranization we are using we have 14 environment 
# we are using 3 clouds and these are threee aws azure and oracle.
#  In AWS we have : 
-> STG/QA 
-> GCC (Gulf Cloud)
-> Fran
-> WWW (Global)
-> SG (Singapore)
-> AU (Australia)
-> US 
-> CA 
# In Azure we have : 
-> UAT
-> NLD 
-> SEA 
-> usaz
# In Oracle we have :
-> Dev Environ

# we have 2 applications 

v1 and v2.

in v1 we are taking data directly from database. 
in v2 we are data first goes to kafka via debizium and then elastic search and then ui.

Completing my Daily task as : Intro to docker and container , vm vs container ,docker architecture and component.

-> Docker Starting 

Docker is a tool that lets you package an application with everything it needs and run it anywhere.

Docker has two versions Enterprise and community 

Docker is a containerization tool which has Docker client docker engine and docker deamon docker registry


"everything in linux is either a file or dir "

"docker file se bnti ha image image se bnta ha container"

"container bnana using image"

"dockerfile se image bnti ha and yu can also pull from docker hub "

<!-- create a container of ubuntu  -->

docker run -itd ubuntu = this will take ubuntu container from docker hub 

-i = interactive 
-d = backgound 

docker exec -it containerid bash = for running and gong into ubuntu folder  

docker run -d -p 80:80 nginx 

80 = PORT for nginx 

container is a virtual environment which has been written all in this image and all

lets make a docker file 

Why do we need docker ?

we need docker to run the system everywhere .

what is docker?

docker is tool which is used to make a container and container is a vortual environment which has been writtn allin this image and all 

how do i use docker?

install docker 
ensure deamon is running 
pulling images from docker hub 


docker ps -a 

docker ps = showing all teh running containers 

docker rm container_id 


![alt text](image.png)


here is the first container runing for nginx 


docker file - image - container 

docker file to image 
=> docker build -t docker-learning .
image to container 
=> docker run -d -p 80:80 docker-learning 


# here we have our first nginx 
# we have worked on another docker file which s for a python project and it is inside 
=>/home/gagan.gandhi/Desktop/java-practise/30-Days-Learning-fareye-/Day4Task/python-for-devops/projects/devops-utilities-api

# completed one more docker file for a simple java application 

# Here Writing the docker file  for a java project

# taking bhagona
FROM eclipse-temurin:17-jdk
# Adding all the INcrediants 
WORKDIR /app

COPY src/Main.java . 
# Mix all the incredients 

RUN javac Main.java 

# Gas on 

CMD ["java","Main.java"]


and this is a docker file for a java app. 


# for Python app we will be writing a file 

# Taking BHagona 
 FROM python:3.14 

 # Adding Incredients 
 WORKDIR /app

 COPY . . 
 # MIXING ALL THE INCREDIENTS 

 RUN pip install -r requirements.txt

 # gas on 
 CMD["python","main.py"]


Day 1 Learning summary 
🚀 Docker Learning - Day 1
🌍 Infrastructure Overview

In our organization, we are working with 14 environments across 3 cloud providers:

☁️ AWS Environments
STG / QA
GCC (Gulf Cloud)
Fran
WWW (Global)
SG (Singapore)
AU (Australia)
US
CA
☁️ Azure Environments
UAT
NLD
SEA
USAZ
☁️ Oracle Cloud
Dev Environment
🧩 Applications Architecture

We are working with two versions of applications:

🔹 v1
Direct communication with the database
🔹 v2 (Modern Architecture)

Data flow:

Database → Debezium → Kafka → Elasticsearch → UI
📅 Daily Learning Tasks
Introduction to Docker & Containers
VM vs Container
Docker Architecture & Components
🐳 Introduction to Docker
📌 What is Docker?

Docker is a tool that allows you to package an application with all its dependencies and run it anywhere.

🏗️ Docker Editions
Docker Community Edition (CE)
Docker Enterprise Edition (EE)
⚙️ Docker Components
Docker Client → Command line interface
Docker Engine → Core runtime
Docker Daemon → Background service
Docker Registry → Stores images (Docker Hub)
🧠 Key Concepts

"Everything in Linux is either a file or a directory"

Dockerfile → Image → Container
Dockerfile → Instructions to build image
Image → Blueprint of application
Container → Running instance of image
🆚 VM vs Container
Feature	VM 🖥️	Container 🐳
OS	Full OS	Shared OS
Size	Heavy	Lightweight
Boot Time	Slow	Fast
Performance	Lower	Higher
🚀 Basic Docker Commands
🔹 Pull & Run Ubuntu Container
docker run -itd ubuntu
-i → Interactive
-t → Terminal
-d → Detached (background)
🔹 Access Container
docker exec -it <container_id> bash
🔹 Run Nginx Container
docker run -d -p 80:80 nginx
80:80 → Host port : Container port
🔹 List Containers
docker ps       # Running containers
docker ps -a    # All containers
🔹 Remove Container
docker rm <container_id>
🐳 Docker Workflow
Dockerfile → Image → Container
🔹 Build Image
docker build -t docker-learning .
🔹 Run Container
docker run -d -p 80:80 docker-learning
❓ Why Docker?
Run applications anywhere
Eliminates "works on my machine" problem
Fast deployment
Lightweight and scalable
🛠️ How to Use Docker?
Install Docker
Ensure Docker daemon is running
Pull images from Docker Hub
Run containers
🎯 First Success

✅ Successfully ran Nginx container
🌐 Application accessible on:

http://localhost:80
💡 Summary
Docker simplifies application deployment
Containers are lightweight and fast

Docker follows:

Build → Ship → Run

