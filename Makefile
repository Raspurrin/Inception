all:
	docker compose -f srcs/docker-compose.yml up -d

set_env:
	bash set_env.bash

setup: set_env all

clean:
	docker compose -f srcs/docker-compose.yml down

clean_env:
	rm srcs/.env

re: clean all

env_re: clean_env setup

#.PHONY all clean re