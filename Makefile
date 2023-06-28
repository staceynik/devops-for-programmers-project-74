# Makefile

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

setup-env:
	test -f .env || cp .env.example .env

install-dependencies:
	docker-compose run --rm app npm install

dev:
	docker-compose up

prod:
	docker-compose -f docker-compose.prod.yml up

test:
	docker-compose -f docker-compose.yml -f docker-compose.override.yml up --abort-on-container-exit app caddy db


build:
	docker-compose build

push:
	docker-compose push

.PHONY: ci setup-env install-dependencies dev prod test build push

