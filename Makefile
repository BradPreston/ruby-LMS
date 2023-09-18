build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

db-create:
	docker-compose run web rake db:create

db-migrate:
	docker-compose run web rake db:migrate

db-seed:
	docker-compose run web rake db:seed

db-bash:
	docker-compose exec -it db bash
