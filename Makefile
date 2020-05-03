.RECIPEPREFIX := $(.RECIPEPREFIX) 
.DEFAULT_GOAL := help
.PHONY: *

help:
  @echo "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m"
  @grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

test: ## Run all tests; Usage: make test [t="<test-folder-1> <test-folder-2> ..."]
  @cd tests; \
  ./test "$(t)"

build: ## Build image. Usage: make build TAG="7.0-cli"
  @docker build --no-cache --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` --build-arg VCS_REF=`git rev-parse --short HEAD` -t phpearth/php:$(TAG) -f docker/$(TAG).Dockerfile docker

build-70: ## Build PHP 7.0 images
  make build TAG="7.0"
  make build TAG="7.0-apache"
  make build TAG="7.0-cgi"
  make build TAG="7.0-cli"
  make build TAG="7.0-lighttpd"
  make build TAG="7.0-litespeed"
  make build TAG="7.0-nginx"

build-71: ## Build PHP 7.1 images
  make build TAG="7.1"
  make build TAG="7.1-apache"
  make build TAG="7.1-cgi"
  make build TAG="7.1-cli"
  make build TAG="7.1-lighttpd"
  make build TAG="7.1-litespeed"
  make build TAG="7.1-nginx"

build-72: ## Build PHP 7.2 images
  make build TAG="7.2"
  make build TAG="7.2-apache"
  make build TAG="7.2-cgi"
  make build TAG="7.2-cli"
  make build TAG="7.2-lighttpd"
  make build TAG="7.2-litespeed"
  make build TAG="7.2-nginx"

build-73: ## Build PHP 7.3 images
  make build TAG="7.3"
  make build TAG="7.3-apache"
  make build TAG="7.3-cgi"
  make build TAG="7.3-cli"
  make build TAG="7.3-lighttpd"
  make build TAG="7.3-litespeed"
  make build TAG="7.3-nginx"

build-all: ## Build all images
  make build-70
  make build-71
  make build-72
  make build-73

push-70: ## Push built PHP 7.0 images to Docker Hub
  @docker push phpearth/php:7.0
  @docker push phpearth/php:7.0-apache
  @docker push phpearth/php:7.0-cgi
  @docker push phpearth/php:7.0-cli
  @docker push phpearth/php:7.0-lighttpd
  @docker push phpearth/php:7.0-litespeed
  @docker push phpearth/php:7.0-nginx

push-71: ## Push built PHP 7.1 images to Docker Hub
  @docker push phpearth/php:7.1
  @docker push phpearth/php:7.1-apache
  @docker push phpearth/php:7.1-cgi
  @docker push phpearth/php:7.1-cli
  @docker push phpearth/php:7.1-lighttpd
  @docker push phpearth/php:7.1-litespeed
  @docker push phpearth/php:7.1-nginx

push-72: ## Push built PHP 7.2 images to Docker Hub
  @docker push phpearth/php:7.2
  @docker push phpearth/php:7.2-apache
  @docker push phpearth/php:7.2-cgi
  @docker push phpearth/php:7.2-cli
  @docker push phpearth/php:7.2-lighttpd
  @docker push phpearth/php:7.2-litespeed
  @docker push phpearth/php:7.2-nginx

push-73: ## Push built PHP 7.3 images to Docker Hub
  @docker push phpearth/php:7.3
  @docker push phpearth/php:7.3-apache
  @docker push phpearth/php:7.3-cgi
  @docker push phpearth/php:7.3-cli
  @docker push phpearth/php:7.3-lighttpd
  @docker push phpearth/php:7.3-litespeed
  @docker push phpearth/php:7.3-nginx
  @docker tag phpearth/php:7.3 phpearth/php:latest
  @docker push phpearth/php:latest

push-all: ## Push all built images to Docker Hub
  make push-70
  make push-71
  make push-72
  make push-73

build-and-push-70: ## Build and push PHP 7.0 images to Docker Hub
  make build-70
  make push-70

build-and-push-71: ## Build and push PHP 7.1 images to Docker Hub
  make build-71
  make push-71

build-and-push-72: ## Build and push PHP 7.2 images to Docker Hub
  make build-72
  make push-72

build-and-push-73: ## Build and push PHP 7.3 images to Docker Hub
  make build-73
  make push-73

build-and-push: ## Build all images and push them to Docker Hub
  make build-all
  make push-all

clean: ## Clean all containers and images on the system
  -@docker ps -a -q | xargs docker rm -f
  -@docker images -q | xargs docker rmi -f
