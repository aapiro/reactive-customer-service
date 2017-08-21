# Reactive Restful service with Spring 5 and Spring Boot 2

This project is about building a small Reactive RESTful service with Spring 5 And Spring Boot 2, the DB used is MongoDB and security is managed with Spring Security OAuth2 and SSL.

More details can be found here: https://dserradji.wordpress.com/

The "non-reactive" version is also available: [customer-service](https://github.com/dserradji/customer-service)

## Docker
*reacive-customer-service* can be started inside a docker container with docker-compose.

Configuration files are located in the *docker* directory, there are 2 files:
- *Dockerfile*: this file describes the docker image of the service
- *docker-compose.yml*: will start a container with mongoDB and will use Dockerfile to build the image of the service and start a container with it.
Use the following command to start, stop and test containers:
- *docker-compose up -d* will start and link the two containers.
- *curl -f -s http://localhost:8081/application/health | jq '.status'* can be used to check if the service is up or down
- *docker-compose down* will stop the containers and remove them

**_Important_**
- *docker-compose up* and *docker-compose down* are run from the *docker* directory
- This configuration has been tested with: Ubuntu Linux *16.04*, Docker CE *17.06.1-ce* and docker-compose *1.15.0*
- If *jq* is not installed on your system you can simply remove *| jq '.status'* from the *curl* command
- If you receive an error message from *docker-compose* about an unsupported version of *Dockerfile* please update your *docker-compose* as described [here](https://github.com/docker/compose/releases)
