.PHONY: test build build-package build-extensions generate-index
.DEFAULT_GOAL := help

help: ## Output usage documentation
	@echo "Usage: make COMMAND [args]\n\nCommands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

test: ## Run all tests
	cd tests; \
	./test-all

build: ## Build necessary image for building packages
	docker-compose -f alpine-repo/.docker/docker-compose.yml build abuild

build-package: ## Usage: make build-package v=7.1|7.2 p=package-name
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild build-package $(v) $(p)

build-extensions: ## Usage: make build-extensions [v=7.1|7.2]
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild build-extensions $(v)

generate-index: ## Generate index file APKINDEX.tar.gz usage: make generate-index [v=7.1|7.2]
	docker-compose -f alpine-repo/.docker/docker-compose.yml run --rm abuild generate-index $(v)
