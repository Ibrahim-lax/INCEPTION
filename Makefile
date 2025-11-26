COMPOSE = docker compose -f srcs/docker-compose.yml

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

clean:
	$(COMPOSE) down
	@sleep 2
	docker system prune -f
	docker builder prune -f
	docker rmi -f $$(docker images -aq)
	docker volume prune --all -f
	docker volume rm mariadb
	docker volume rm wordpress
	docker volume rm vol_one
	docker volume rm vol_two
	docker volume rm vol_thri
	




re: clean up

