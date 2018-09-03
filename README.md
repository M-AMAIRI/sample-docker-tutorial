# Ddocker deployment

##### What is Docker?
Docker is a tool that allows developers to easily deploy their applications in a sandbox ( containers) to run on the host operating system . The key benefit of Docker is that it allows users to package an application with all of its dependencies into a standardized unit

#####  Why use containers?

This gives developers the ability to create predictable environments that are isolated from rest of the applications and can be run anywhere.


The Difference Between Docker Compose and Docker Swarm and 
docker cli  :
The docker cli is used when managing individual containers on a docker engine. It is the client command line to access the docker daemon api.


Docker Swarm:
When you are trying to manage containers across multiple physical or virtual machines.
Docker Compose: When you are trying to define a multi container application.

The docker-compose cli :
can be used to manage a multi-container application. It also moves many of 
the options you would enter on the docker run cli into the docker-compose.yml file for easier reuse. 
It works as a front end "script" on top of the same docker api used by docker, 
so you can do everything docker-compose does with docker commands and a lot of shell scripting.


#####  Using Docker Compose :

##### 1 - Docker compose Installation :


```sh
$ curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-'uname -s'-'uname -m' > /usr/local/bin/docker-compose
```

##### 2 - build a Docker Compose file :

The Compose file is a YAML file which defines services, networks, and volumes.
Compose file is located at the following path ./docker-compose.yml.
A service definition contains configuration which will be applied to each container started for that service. 

##### 3 - create a Entrypoint :
We look at how to use ENTRYPOINT keyword in Dockerfile to override default Entrypoint
Files involved

###### Dockerfile
```sh
FROM python
COPY  ./src/hello.py /src/hello.py
ENTRYPOINT ["python"]
CMD ["/src/hello.py"] 
```   

###### docker-compose.yml .
```sh
version: "2"
services:
  test:
    build: 
```    
###### Execute
```sh
$ docker-compose up
```
###### Output :

![Alt text](img/img.jpg)




Thanks :) ,
M-AMAIRI 

