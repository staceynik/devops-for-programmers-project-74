# Makefile

ci:
        docker-compose -f docker-compose.yml up --abort-on-container-exit

setup-env:
        cp .env.example .env

install-dependencies:
        npm install

dev:
        docker-compose up

prod:
        docker-compose -f docker-compose.prod.yml up

test:
        docker-compose run --rm app npm test

build:
        docker-compose build

push:
        docker-compose push

.PHONY: ci setup-env install-dependencies dev prod test build push

