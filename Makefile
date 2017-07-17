.PHONY: test build build-package build-all generate-index abuild-generate-private-key abuild-generate-public-key
.DEFAULT_GOAL := help

help: ## Output usage documentation
	@echo "Usage: make COMMAND [args]\n\nCommands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

test: ## Run all tests
	cd tests; \
	./test-all

build: ## Build necessary image for building packages
	docker-compose -f alpine-repo/.docker/docker-compose.yml build abuild

build-packages: ## Usage: make build-package p=[7.0|7.1|7.2|all|{package-name1 package-name2}]
	make build
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild build-packages "$(p)"

generate-index: ## Generate index file APKINDEX.tar.gz usage: make generate-index
	make build
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild generate-index

abuild-generate-private-key: ## Generate new private key
	docker-compose -f alpine-repo/.docker/docker-compose.yml run abuild openssl genrsa -out phpearth.rsa.priv 4096 --build --force-recreate

abuild-generate-public-key: ## Generate new public key
	docker-compose -f alpine-repo/.docker/docker-compose.yml run abuild openssl rsa -in phpearth.rsa.priv -pubout -out /repo/phpearth.rsa.pub
