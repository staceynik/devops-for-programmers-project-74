# Makefile

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

setup-env:
	test -f .env || cp .env.example .env

install-dependencies:
	docker-compose run --rm app npm install

up:
	docker-compose up

dev:
	docker-compose up -d

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

build:
	docker-compose build

push:
	docker-compose push

.PHONY: ci setup-env install-dependencies dev prod test build push


