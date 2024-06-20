DOCKER_IMAGE = code-notes

DEV_PORT = 8000

PWD_DIR = $(shell pwd)

.DEFAULT_GOAL := help

dev:
	@echo "Starting the development server on port $(DEV_PORT)..."
	@docker build -t $(DOCKER_IMAGE) .
	@docker run --rm -it -p $(DEV_PORT):$(DEV_PORT) -v $(PWD_DIR):/docs $(DOCKER_IMAGE)

build:
	@echo "Building the documentation..."
	@docker build -t $(DOCKER_IMAGE) .
	@docker run --rm -v $(PWD_DIR):/docs $(DOCKER_IMAGE) build

help:
	@echo "Usage: make [target]"
	@echo
	@echo "Available targets:"
	@echo "  dev     - Start the development server"
	@echo "  build   - Build the documentation"
	@echo "  help    - Show this help message (default)"

.PHONY: dev build help
