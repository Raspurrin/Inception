all:
	docker compose -f srcs/docker-compose.yml up -d

clean:
	docker compose down

re: clean all

#.PHONY all clean re