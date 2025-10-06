.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help

.PHONY: install-deps-dev
install-deps-dev: ## install dependencies for development
	@# https://pnpm.io/installation
	@which pnpm || npm install -g pnpm
	pnpm install

.PHONY: format-check
format-check: ## format check
	@pnpm exec biome format

.PHONY: fix
fix: ## apply auto-fixes
	@pnpm exec biome format --write
	@pnpm exec biome lint --write
	@pnpm exec biome check --write --unsafe

.PHONY: lint
lint: ## lint
	@pnpm exec biome lint

.PHONY: test
test: ## run tests
	@echo "Yet to be implemented"

.PHONY: build
build: ## build applications
	pnpm build

.PHONY: ci-test
ci-test: install-deps-dev format-check lint test build ## run CI test

.PHONY: update
update: ## update dependencies
	pnpm update --latest

.PHONY: run
run: ## run applications
	pnpm dev
