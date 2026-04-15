# Here we will studing advanced topics of kubernetes 


# Recap first 

yesterday we have done kubernetes fundamentals.

-> we have studied about the architecture of k8s.

-> we have studied about how we create a cluster.

-> for making a cluster we need three things installed in out system one is docker , one is kind , one is kubectl.

-> after installing these three things we will be making a file which is kind-config.yml

-> this file looks like something this 

kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
name: Gagan-cluster
nodes:
- role: control-plane
  image: kindest/node:v1.35.0 
  <!-- this is the control plane which is master node we have  -->
- role: worker
  image: kindest/node:v1.35.0
  <!-- this is a worker node we have which has kubelet which will be mnaaging all the pods  -->
- role: worker
  image: kindest/node:v1.35.0
- role: worker
  image: kindest/node:v1.35.0

<!-- After this we will be making a pod.yml in this we will be making a yml file containing all the details of pod  -->

<!-- After this we will be Running that kind-config file  -->

commands -> kind create cluster --config kind-config.yml 


<!-- now we have created a cluster here  -->

so to check what is inside the contrl plane yu can go inside it using 
docker exec -it id bash 

<!-- now we will be making a manifest file for this nginx pod  -->

our manifest file will look like fot this nginx pod 

apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80

<!-- now we will be running a command  -->

kubectl apply -f pod.yml

after this yu can check for the running pods 

kubectl get pods 

<!-- Now for accessing this we need a service proxy and we can also do port-forward -->

kubectl port-forward pod/nginx 8081:80 

first is our system port and another is our container pod 

now we ned two more files first is our namespace file and another is our deployment file and the we will me making a service file 


now we ave created a namespace file whch looks alike 
apiVersion: v1
kind: Namespace
metadata:
  name: nginx-app


<!-- after creating this file we will be adding a namespace:nginx-app in this pod.yml file  -->


now we will chcking if there is anypod running under this namespace 

kubectl get pods -n nginx-app


<!-- since yu havent added anything in this namespace so there is nothing in this namespace nw yu have to add yur nginx pod in this namespace  -->

see for adding this in the namespace yu have to first delete the previous nginc-pod and then start again so to appy the chnages in the new nginx pod 



now yu will able to see the pod is running in this nginx-app namespace 


got the concept of namespace and lets go to deployments 


now we need a manifest file which is deplyment inside this name space 

<!-- now we have created a deplyment.yml for making replicas of this pod.yml we can configure the replicas inside the file  -->

<!-- now we will be studying about service.yml  -->

smallest runnable unit in a k8s is pod 

bafore we guys were using ingress but ow we are using gateway api 

everthing is defined using routes and all 

but in kind cluster we dont need any gateway api 


# lets do a handson with one project having all these files and all

lets clone a project Git clone project http 
then we will be creating a k8s environment for this project today and till everything is done then only we will be movin gforward 

