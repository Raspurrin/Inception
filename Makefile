ENV_STATE := $(shell find srcs/.env -type f)

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
	docker-compose build nginx
	docker-compose build wordpress
	docker-compose build mariadb
	rm srcs/.env

re: clean all

env_re: clean_env setup

#.PHONY all clean re