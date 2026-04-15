# Kubernetes starting Again because there is some issues in understanding some concepts.

# History of k8s is borg and cyborg 

# borg is a tool which is created by google in 2013 it is a tool for autoscallig and Autohealng.

# then google make this tool open source for everytone then here comes our organization cncf 

# cloud native and computing foundations. 

# They did some changes and names this tool k8s 

# k8s is a tool which is used for auto scalling and autohealing 

# then lets come to architecture of k8s 

<!-- in architecture we have two component one is  -->

# COntrol Plane and ANother is worker PLane 

# control plane is master node 

master node we have 3 components 
1 : Api server 
2 : SCheduler 
3 : controller Manager 
Worker Node we have 
1 : kubelet
2 : server proxy 

on above all this we have kubectl 

kubectl sends request to API server, which stores desired state in etcd. Scheduler watches for unscheduled pods and assigns them to nodes. Kubelet on that node pulls the image and runs the container, while controller manager ensures the desired state is maintained.

Prerequisite 
now we need to install kind kubectl and docker 

"Everything in k8s is a manifest file "

a yml or yaml confog file is a manifest file 

kubernetes phte kaise ha 

k8s architecture padh lo 
k8 cluster bana lo 
docker container banana lo 
yaml or yml likhna seekh lo 
pod bnana sikh lo 


pod is the fundamental logical unit where containers are running 

everything in k8s is stat from pods 

pod is the smallest unit k8s 

ceo said api server to scheduler ki i need a nginx pod 

i need a pod 

# this is how scalling works 

container network interface 

how do i make a pod 

everything in k8s is a manifest file 

okay creating a pod first using yml and then port forwarding for accesing the pod 

POD - Logical Unit 

Pod 1 pod 2 pod 3 pod 4 

# smallest runnable unit in a k8s is a pod 

# a pod is a home to run a single or ultiple container

it should be scallable 

docker container -- pod -- deployment -- srvice - kubernetes cluster -- ec2 

we need to make a container now make a single container and then make a replicas or s side gar 


a pod is atleast a single container 

deployment gives yu desired state 

pod maybe multiple or single 


service will be assiging a single port to cluster

we wil do a port forward 


eks server yu dont need to do this like what is service and all

node port 
cluster ip 
<!-- external ip 

Load balancer
Headless service 
Gateway api 

in preiously we have to use ingress but now a days we are using gateway api for the same 

gateway api == path based routing 

lets make this architure on ec2

 -->

