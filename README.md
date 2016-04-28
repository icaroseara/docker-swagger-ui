# Dockerized Swagger UI
This Dockerfile packages up Swagger UI and runs it with http-server.

## Compatibility

Swagger UI Version | OpenAPI Spec compatibility |
------------------ | -------------------------- |
2.0.24             | 1.1, 1.2  									|

## Setup and Installation

### Clone repo and submodules

```sh
$ git clone https://github.com/icaroseara/docker-swagger-ui.git
```

### Building the docker container

```sh
$ cd docker-swagger-ui

$ docker build -t swagger-ui .
```

### Running the docker container

```sh
$ docker run -d -p 80:8080 swagger-ui
```
## Try it out on your favorite browser
Swagger ui is running at: http://localhost
