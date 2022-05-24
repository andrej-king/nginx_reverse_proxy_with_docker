# run all services
init: docker-down \
	docker-up

# stop all services
down: docker-down

# docker run
docker-up:
	docker-compose -f ./services/service_1/docker-compose.yml up -d
	docker-compose -f ./services/service_2/docker-compose.yml up -d

# docker down, remove old containers
docker-down:
	docker-compose -f ./services/service_1/docker-compose.yml down --remove-orphans
	docker-compose -f ./services/service_2/docker-compose.yml down --remove-orphans
