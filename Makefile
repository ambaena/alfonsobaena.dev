SHELL = /bin/sh

.DEFAULT_GOAL:=help

.PHONY: live-server
live-server: ## Run local http serverœ
	npx live-server

.PHONY: format
format: ## Run prettier
	npx prettier --write .

.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)