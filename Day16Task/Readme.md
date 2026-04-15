<!-- 10/04/2026  -->


<!-- we will be Revising Docker and k8s today as we have done  -->

# NGinx and shell scripting we need a server.

<!-- Docker Revision  -->

" Its working in my machine and not working in yur machine"

Problem :

-> OS mismatch 
-> Lbraries and Dependencies Mismatch 
-> Commands and Instructions Under 

Solution:
Local Environment -> Replicate 
Virtual Environment.


This is called a virtualization.

Application 1 

OS(Linux) | OS (MAC)

Hypervisor (VM) Engine

Operating System (Windows , Linux , MacOs )

RAM , CPU , HARD DISK , NETWORK , Gpu , PORTS 

Virtualization is a process of adding a hypervisor on top of yur os system so that yu can istall and use a new opearting sytsem which can share resourse or dedicated resources from yur own device 

isues
ALlocated Ram , Storage 
The system get slow 
Duplicate of os
Over utilization of Resources 
HIgh Cost 
Performance issues.

its solution is a containerization 

you can run yur application in a container and then run in yur operatig system

App 1 - code python java linux os 4GB RAM    

docker engine 

operating system 

ports , network , gpu , ram , cpu ,hdd 

docker (containerization tool)

docker client 
docker engine (os ke top)
docker daemon (Background process )
docker registry

docker cli , docker desktop 

<!-- REvising the advanced vconcept in docker where we will be dlig  -->

1st : My docker image size is to big and reduce it and secure it.
2nd : MY container crashed i lost all my data and how do i persist my data?
3rd i want to run a multi tier project which has a front end and backend and data base and llm integration [ Docker compose - Docker Network , docker volume and docker healthcheck ].

<!-- THese THREE THINGS ARE VERY IMPORTANT IN DOCKER  -->

DOCKER PS 

