# Revising k8s one more time.


<!-- Video 1  -->

k8s 

Goggle was scalling Manually so they Decided to make a tool which will auto Scale and Auto Heal.

THey wer scalling manually.

crashed container were manually healed and they go to another server for auto scalliing.

THey developed a tool which is borg - this tool will auto heal and auto scale.

Auto scalling and Auto Healing.

They donated this tool to open source and then people get to know how this k8s is working.

now cncf named this as k8s.

THis is the whole history of k8s.

Cloud natine Computing FOundation.

NOw we will be studying about architecture of k8s.

we have a 
Master plane and control plane.

Master plane(Node) we have:
Control PLane 
Api Server 
ETCD 
COntroller Manager 
Scheduler 

Worker Plane (Worker Node)

kubelet
Server Proxy

and we have kubectl which is the head and this head talks to API SERVER AND Then this api server goes to scheduler and then scheduler ask server to check from etcd whether we have a free pod or not then only we will work on that pod.

this all is comes under a network which is CNI 

<!-- this is a basic about this k8s architecture  -->


Now for runnig this we need a kind cluster