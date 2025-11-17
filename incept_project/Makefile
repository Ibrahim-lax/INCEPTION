COMPOSE = docker compose -f srcs/docker-compose.yml

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

first: down
	rm -rf /home/librahim/data/mariadb/*
	rm -rf /home/librahim/data/wordpress/*
	docker system prune -f
	docker builder prune -f
	docker rmi -f $$(docker images -aq)


clean: first
	$(COMPOSE) down
	rm -rf /home/librahim/data/mariadb/*
	rm -rf /home/librahim/data/wordpress/*
	docker system prune -f
	docker volume prune -f
	docker builder prune -f
	docker rmi -f $$(docker images -aq)

re: clean up

