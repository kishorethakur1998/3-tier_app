# Build Project Using Maven

Maven is java based build tool to generate executable 

packages(jar, ear,war) for java based projects.

```bash
mvn clean package
```

## Create Docker Image
Docker is a continerization tool.Using docker we can deploy our applications as 

containers using docker images. Containers contains application code and also the softwares,

config files whatever is required for our application to run.

Create docker image using Dockerfile


```docker
docker build -t appimage .
```

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
