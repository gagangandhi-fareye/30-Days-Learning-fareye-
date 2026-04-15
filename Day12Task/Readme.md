# Lets REcall all the concept again once .

so before starting anything we first need to setup a cluster using kind.

step 1 :

make a directory for set up kind cluster using kind-config.yml.
<!-- In this kind-config yu can define how many workers yu want in yur node -->
CMD[kind create cluster --config kind-config.yml]

step 2 :

Then we will be creating a folder for k8s files for this project which is mkdir k8s.

step 3 :

IN this project we will be creating a pod.yml file where we will be creating our first pod maybe nginx or anyother specially according to the project 

Step 4 : Cretaing a Namespace.

Lets create a namespace where all the yml files will be placed incide so creating a namespace.yml 

apiVersion: v1
kind: Namespace
metadata:
  name: nginx-app
<!-- kubectl apply -f namespace.yml  -->
Step 5 : 

Noe creating a deployment.yml for everything 

first we will be setting our database 

touch mysql-deployment.yml 

after setting the my sql deployment file for mysql database 
<!-- this is the default api version for deployment  -->
apiVersion: apps/v1 
<!-- here we have specified kind type which is deployment  -->
kind: Deployment
metadata:
<!-- name of the deployment  -->
  name: mysql-deployment
  namespace: bankapp
  labels:
    app: mysql
    <!-- now we will be writing the specifications  -->
spec:
<!-- here we will be creatig the replicas  -->
  replicas: 1
  selector:
    matchLabels:
      app: mysql
  template:
    metadata:
      labels:
        app: mysql
    spec:
    <!-- Mysql container infor specifications  -->
      containers:
      - name: mysql
        image: mysql:8.0
        ports:
        - containerPort: 3306

Step 6 : Settling our Environment Variables.

IN k8s we will be setling the environment variables using configmap and secrets.


in the namespace we will be defining the configmap.yml where all the variables are stored data which we can show to everyone.


apiVersion: v1
kind: ConfigMap
metadata:
  name: bankapp-config-map
  namespace: bankapp
data:
  # property-like keys; each key maps to a simple value
  MYSQL_DATABASE: bankappdb 
  

Step 7 :

In K8S we need to create a secrets.yml because of the 

apiVersion: v1
kind: Secret
metadata:
  name: bankapp-secret
  namespace: bankapp
type: Opaque
data:
  MYSQL_ROOT_PASSWORD: VGVzdEAxMjM=   # Test@123
  MYSQL_USER: cm9vdA==                 # root
  MYSQL_PASSWORD: VGVzdEAxMjM=         # Test@123
  

In this we have to present all the secrets using a specific concept used there 

Step 8:

NOw we will be validating both the mysql-deployents.yml file 

CMD[kubectl apply -f mysql-deployment.yml ]

we can also do one command which is kubectl describe pod mysql-deplyment.yml and se the details for this pod which worker node it is running and what are the other details.


Step 9:

<!-- we will be now adding the volume in our pod  -->

we have a concept which is called persistenat volume in the k8s volume managemant along with we have to use persistant volume claim 

apiVersion: v1
kind: PersistentVolume
metadata:
  name: mysql-pv
  labels:
    app: mysql
spec:
  storageClassName: manual
  capacity:
    storage: 5Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /mnt/data/mysql
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: ollama-pv
  labels:
    app: ollama
spec:
  storageClassName: manual
  capacity:
    storage: 5Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /mnt/data/ollama


<!-- pv file muste be looking like something this  -->

here we have to speicified the path along with the storage 

Step 10: 


<!-- we need to create a file which is pvc claim  -->

apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: mysql-pvc
  namespace: bankapp
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
  selector:
    matchLabels:
      app: mysql
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: ollama-pvc
  namespace: bankapp
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
  selector:
    matchLabels:
      app: ollama

<!-- we will adding this file for cliaming that peristant volume  -->


Step 11:


Adding strategy 

We define RollingUpdate or Recreate inside the Deployment YAML under spec.strategy.type.

this is for restarting the pod like in rollout it will be waiting until the new pod is not created and in recrete it will be immidietly created after deleting the old one it doesnt wait for the ne one 


Step 12 :

Lets Create Probes.

created probes along with 

readinessProbe:
          exec:
            command:
              - sh
              - -c
              - mysqladmin ping -h localhost -u root -p$MYSQL_ROOT_PASSWORD
          initialDelaySeconds: 20
          periodSeconds: 10
          failureThreshold: 5