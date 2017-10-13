.PHONY: help test build
.DEFAULT_GOAL := help

help: ## Output usage documentation
	@echo "Usage: make COMMAND [args]\n\nCommands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

test: ## Run all tests; Usage: make test [t="<test-folder-1> <test-folder-2> ..."]
	cd tests; \
	./test "$(t)"

build: ## Build all images and push them to Docker Hub
	docker build --no-cache -t phpearth/php:7.0 -f docker/Dockerfile-7.0 docker
	docker build --no-cache -t phpearth/php:7.0-apache -f docker/Dockerfile-7.0-apache docker
	docker build --no-cache -t phpearth/php:7.0-cgi -f docker/Dockerfile-7.0-cgi docker
	docker build --no-cache -t phpearth/php:7.0-cli -f docker/Dockerfile-7.0-cli docker
	docker build --no-cache -t phpearth/php:7.0-litespeed -f docker/Dockerfile-7.0-litespeed docker
	docker build --no-cache -t phpearth/php:7.0-nginx -f docker/Dockerfile-7.0-nginx docker
	docker build --no-cache -t phpearth/php:7.1 -f docker/Dockerfile-7.1 docker
	docker build --no-cache -t phpearth/php:7.1-apache -f docker/Dockerfile-7.1-apache docker
	docker build --no-cache -t phpearth/php:7.1-cgi -f docker/Dockerfile-7.1-cgi docker
	docker build --no-cache -t phpearth/php:7.1-cli -f docker/Dockerfile-7.1-cli docker
	docker build --no-cache -t phpearth/php:7.1-litespeed -f docker/Dockerfile-7.1-litespeed docker
	docker build --no-cache -t phpearth/php:7.1-nginx -f docker/Dockerfile-7.1-nginx docker
	docker build --no-cache -t phpearth/php:7.2 -f docker/Dockerfile-7.2 docker
	docker build --no-cache -t phpearth/php:7.2-apache -f docker/Dockerfile-7.2-apache docker
	docker build --no-cache -t phpearth/php:7.2-cgi -f docker/Dockerfile-7.2-cgi docker
	docker build --no-cache -t phpearth/php:7.2-cli -f docker/Dockerfile-7.2-cli docker
	docker build --no-cache -t phpearth/php:7.2-litespeed -f docker/Dockerfile-7.2-litespeed docker
	docker build --no-cache -t phpearth/php:7.2-nginx -f docker/Dockerfile-7.2-nginx docker
	docker push phpearth/php:7.0
	docker push phpearth/php:7.0-apache
	docker push phpearth/php:7.0-cgi
	docker push phpearth/php:7.0-cli
	docker push phpearth/php:7.0-litespeed
	docker push phpearth/php:7.0-nginx
	docker push phpearth/php:7.1
	docker push phpearth/php:7.1-apache
	docker push phpearth/php:7.1-cgi
	docker push phpearth/php:7.1-cli
	docker push phpearth/php:7.1-litespeed
	docker push phpearth/php:7.1-nginx
	docker push phpearth/php:7.2
	docker push phpearth/php:7.2-apache
	docker push phpearth/php:7.2-cgi
	docker push phpearth/php:7.2-cli
	docker push phpearth/php:7.2-litespeed
	docker push phpearth/php:7.2-nginx
	docker tag phpearth/php:7.2 phpearth/php:latest
	docker push phpearth/php:latest
