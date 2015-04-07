## MMS Automation Agent Dockerfile


This repository contains **Dockerfile** of [MMS Automation Agent](http://mms.mongodb.com/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/ecardoso/mms-agent) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [phusion/baseimage](http://phusion.github.io/baseimage-docker/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/ecardoso/mms-agent/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull ecardoso/mms-agent`

   (alternatively, you can build an image from Dockerfile: `docker build -t="ecardoso/mms-agent" github.com/eduardocardoso/mms-agent`)


### Usage

  Start a container by mounting the mongo data directory and specifying the MMS group id and api key:

    ```sh
    docker run -d -v <data-dir>:/data -e GROUPID=<group-id> -e APIKEY=<api-key> ecardoso/mms-agent
    ```

After few seconds the agent can be added on your mms dashboard. 
