all:
	docker build -t nginx srcs/requirements/nginx
	docker run --name nginx nginx

clean:
	docker stop nginx
	docker rm -f nginx
fclean: clean
	docker rmi -f nginx

re: fclean all
