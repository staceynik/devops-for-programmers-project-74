setup:
	npm ci

start:
	npm start

dev:
	npm run dev

lint:
	npx eslint .

test:
	npm test

heroku-logs:
	heroku logs --tail

prepare-env:
	cp -n .env.example .env
ci:
    docker-compose -f docker-compose.yml up --abort-on-container-exit

