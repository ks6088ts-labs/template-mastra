[![test](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/test.yaml/badge.svg?branch=main)](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/test.yaml?query=branch%3Amain)
[![docker](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/docker.yaml/badge.svg?branch=main)](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/docker.yaml?query=branch%3Amain)
[![docker-release](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/docker-release.yaml/badge.svg)](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/docker-release.yaml)
[![ghcr-release](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/ghcr-release.yaml/badge.svg)](https://github.com/ks6088ts-labs/template-mastra/actions/workflows/ghcr-release.yaml)

# template-mastra

A GitHub template repository for Mastra projects.

## Prerequisites

- [Node 22.12.0+](https://nodejs.org/en/download)
- [pnpm](https://pnpm.io/installation)
- [GNU Make](https://www.gnu.org/software/make/)

## Development instructions

### Local development

Use Makefile to run the project locally.

```shell
# help
make

# install dependencies for development
make install-deps-dev

# run tests
make test

# build applications
make build

# run CI tests
make ci-test
```
