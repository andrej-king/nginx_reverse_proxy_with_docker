# run all services
init: docker-down \
	docker-up

# stop all services
down: docker-down

# build all images
build: docker-build

# docker build
docker-build:
	docker-compose -f ./services/service_1/docker-compose.yml build --no-cache
	docker-compose -f ./services/service_2/docker-compose.yml build --no-cache
	docker-compose -f ./services/gateway/docker-compose.yml build --no-cache

# docker run
docker-up:
	docker-compose -f ./services/service_1/docker-compose.yml up -d
	docker-compose -f ./services/service_2/docker-compose.yml up -d
	docker-compose -f ./services/gateway/docker-compose.yml up -d

# docker down, remove old containers
docker-down:
	docker-compose -f ./services/gateway/docker-compose.yml down --remove-orphans
	docker-compose -f ./services/service_1/docker-compose.yml down --remove-orphans
	docker-compose -f ./services/service_2/docker-compose.yml down --remove-orphans
