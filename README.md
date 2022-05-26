# NGINX Reverse Proxy with docker services

## Project structure
<img src="./.readme-images/project-structure.png" width="250">

## Commands
```bash
# run all services
$ make init
```
```bash
# stop all services
$ make down
```
```bash
# build service images (with use cache)
$ make build
```
```bash
# force rebuild service images
$ make rebuild
```

## Access to services
* [Service 1][service_1]
* [Service 2][service_2]
* [Service 3][service_3] redirect to the host address [localhost:3000][localhost_app]

[service_1]: http://localhost:8080
[service_2]: http://localhost:8081
[service_3]: http://localhost:8082
[localhost_app]: http://localhost:8082
