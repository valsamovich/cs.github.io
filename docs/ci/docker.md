# Docker

**Docker** is an open-source project that automates the deployment of applications inside software containers.

- Official [website](https://www.docker.com/)
- [Docker Hub](https://hub.docker.com) to get Docker repository
- [Self-pased training](https://training.docker.com/self-paced-training)

## Repository
    
Repository is a service responsible for hosting and distributing images.

## Image

To preview images on working station:

    docker images

## Container

To create and run a container:

Command Descritpino
    # basic command
    docker run
    
    # full syntax
    sudo docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
    
    # run terminal on ubuntu
    docker run -i -t ubuntu:14.04 /bin/bash
    
    # to shutdown 
    exit
    
    # list on containers
    docker ps
