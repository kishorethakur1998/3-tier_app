
## Deploy Application Using Docker Compose 

```docker-compose 
docker-compose up -d 
```
## SpringBoot application snapshot
![springboot](https://user-images.githubusercontent.com/86631180/196008823-7b0e698d-7ab4-4cb9-a9ef-e56bf7e97638.png)

## List Docker Containers
```docker
docker ps -a
```

## To launch SpringBoot application in Kubenetes
Files Required: Dockerfile, Jenkinsfile and springbootapp.yml (deployment and service yaml file of application and mongo database )

#### Step 1

Use **AWS** EC2 instances for **Jenkins-server** and **Kops-server**

#### Step 2
Create kops cluster using 

```kops
kops create cluster --name=clustername --state=s3://S3bucketname --zones=east-us-1a,east-us-1b --node-count=2 --node-size=t2.micro --master-size=t2.medium --dns-zone= DNS name
```
#### Step 3

Update cluster

```kops
kops update cluster --name=clustername --state=s3://S3bucketname --yes --admin
```
#### Step 4

Wait for 5-6 min and validate cluster

```kops
kops validate cluster --name=clustername --state=s3://S3bucketname --yes --admin
```
#### Step 5

Login to Jenkins GUI using **localhost:8080** in web browser

Allow kops instance to inbound jenkins instance using security group

Create node and add Kops as a slave in Jenkins.

Create Jenkin job and run Jenkinsfile. 
