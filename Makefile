ENV_STATE = $(shell find srcs/.env -type f)

ifeq ($(ENV_STATE),srcs/.env)
ENV_FLAG	=
else 
ENV_FLAG	= set_env
endif

all: $(ENV_FLAG) docker

docker:
	docker compose -f srcs/docker-compose.yml up -d

set_env:
	bash set_env.bash

clean:
	docker compose -f srcs/docker-compose.yml down

fclean: 
	docker image rm srcs-wordpress srcs-nginx srcs-mariadb
	docker volume rm datadir wordpress

re: $(ENV_FLAG) clean all

env_re: clean_env setup

#.PHONY all clean re