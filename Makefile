.PHONY: help test build build-packages generate-index abuild-generate-private-key abuild-generate-public-key clean sh
.DEFAULT_GOAL := help

TIME=$(shell date +"%Y-%m-%d-%H-%M-%S")

help: ## Output usage documentation
	@echo "Usage: make COMMAND [args]\n\nCommands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

test: ## Run all tests; Usage: make test [t="<test-folder-1> <test-folder-2> ..."]
	cd tests; \
	./test "$(t)"

build: ## Build necessary image for building packages
	docker-compose -f alpine-repo/.docker/docker-compose.yml build abuild

build-packages: ## Usage: make build-package [p="7.0|7.1|7.2|all|<package-name1> <package-name2> ..."]
	make build
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild build-packages "$(p)" | tee log/$(TIME).txt

generate-index: ## Generate index file APKINDEX.tar.gz usage: make generate-index
	make build
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild generate-index

abuild-generate-private-key: ## Generate new private key
	docker-compose -f alpine-repo/.docker/docker-compose.yml run abuild openssl genrsa -out phpearth.rsa.priv 4096 --build --force-recreate

abuild-generate-public-key: ## Generate new public key
	docker-compose -f alpine-repo/.docker/docker-compose.yml run abuild openssl rsa -in phpearth.rsa.priv -pubout -out /repo/phpearth.rsa.pub

clean: ## Remove pkg, src, tmp and log folders when building packages for Alpine
	rm -rf alpine-repo/build/main/*/pkg alpine-repo/build/main/*/src alpine-repo/build/main/*/tmp log/*

sh: ## Run shell
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild sh
