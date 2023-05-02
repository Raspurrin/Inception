all:
	docker build -t nginx srcs/requirements/nginx
	docker run -d -p 80:80 --name nginx nginx

clean:
	docker stop nginx
	docker rm -f nginx
fclean: clean
	docker rmi -f nginx

re: fclean all
