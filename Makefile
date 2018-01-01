.RECIPEPREFIX +=
.DEFAULT_GOAL := help

.PHONY: help
help: ## Output usage documentation
  @echo "Usage: make COMMAND [args]\n\nCommands:"
  @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: test
test: ## Run all tests; Usage: make test [t="<test-folder-1> <test-folder-2> ..."]
  @cd tests; \
  ./test "$(t)"

.PHONY: build
build: ## Build image. Usage: make build TAG="7.0-cli"
  @docker build --no-cache --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` --build-arg VCS_REF=`git rev-parse --short HEAD` -t phpearth/php:$(TAG) -f docker/$(TAG).Dockerfile docker

.PHONY: build-all
build-all: ## Build all images
  make build TAG="7.0"
  make build TAG="7.0-apache"
  make build TAG="7.0-cgi"
  make build TAG="7.0-cli"
  make build TAG="7.0-lighttpd"
  make build TAG="7.0-litespeed"
  make build TAG="7.0-nginx"
  make build TAG="7.1"
  make build TAG="7.1-apache"
  make build TAG="7.1-cgi"
  make build TAG="7.1-cli"
  make build TAG="7.1-lighttpd"
  make build TAG="7.1-litespeed"
  make build TAG="7.1-nginx"
  make build TAG="7.2"
  make build TAG="7.2-apache"
  make build TAG="7.2-cgi"
  make build TAG="7.2-cli"
  make build TAG="7.2-lighttpd"
  make build TAG="7.2-litespeed"
  make build TAG="7.2-nginx"

.PHONY: push-all
push-all: ## Push all built images to Docker Hub
  @docker push phpearth/php:7.0
  @docker push phpearth/php:7.0-apache
  @docker push phpearth/php:7.0-cgi
  @docker push phpearth/php:7.0-cli
  @docker push phpearth/php:7.0-lighttpd
  @docker push phpearth/php:7.0-litespeed
  @docker push phpearth/php:7.0-nginx
  @docker push phpearth/php:7.1
  @docker push phpearth/php:7.1-apache
  @docker push phpearth/php:7.1-cgi
  @docker push phpearth/php:7.1-cli
  @docker push phpearth/php:7.1-lighttpd
  @docker push phpearth/php:7.1-litespeed
  @docker push phpearth/php:7.1-nginx
  @docker push phpearth/php:7.2
  @docker push phpearth/php:7.2-apache
  @docker push phpearth/php:7.2-cgi
  @docker push phpearth/php:7.2-cli
  @docker push phpearth/php:7.2-lighttpd
  @docker push phpearth/php:7.2-litespeed
  @docker push phpearth/php:7.2-nginx
  @docker tag phpearth/php:7.2 phpearth/php:latest
  @docker push phpearth/php:latest

.PHONY: build-and-push
build-and-push: ## Build all images and push them to Docker Hub
  make build-all
  make push-all

.PHONY: clean
clean: ## Clean all containers and images on the system
  -@docker ps -a -q | xargs docker rm -f
  -@docker images -q | xargs docker rmi -f
