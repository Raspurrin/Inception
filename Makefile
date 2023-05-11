ENV_STATE = $(shell find srcs/.env -type f)
VOL_STATE = $(shell find srcs/volumes | head -n 1)

ifeq ($(ENV_STATE),srcs/.env)
ENV_FLAG	=
else 
ENV_FLAG	= set_env
endif

ifeq ($(VOL_STATE),srcs/volumes)
VOL_FLAG	= 
else 
VOL_FLAG	= create_vol
endif

all: $(ENV_FLAG) $(VOL_FLAG) docker

docker:
	docker compose -f srcs/docker-compose.yml up --build -d

create_vol: 
	mkdir srcs/volumes
	mkdir srcs/volumes/wordpress
	mkdir srcs/volumes/mariadb

set_env:
	bash set_env.bash

clean:
	docker compose -f srcs/docker-compose.yml down 
	docker image rm srcs-wordpress srcs-nginx srcs-mariadb
	docker volume rm mariadb wordpress
	rm -rf srcs/volumes

re: $(ENV_FLAG) clean all

#.PHONY all clean re