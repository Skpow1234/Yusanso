.PHONY: help install lint typecheck test notebooks compose-up compose-down

help:
	@echo "Targets: install lint typecheck test notebooks compose-up compose-down"

install:
	uv sync --all-extras

lint:
	uv run ruff check src tests services
	uv run ruff format --check src tests services

typecheck:
	uv run mypy src

test:
	uv run pytest

notebooks:
	uv run jupyter lab notebooks

compose-up:
	docker compose -f deploy/compose/docker-compose.yml up -d

compose-down:
	docker compose -f deploy/compose/docker-compose.yml down
