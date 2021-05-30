###-----------------------------------###
### use `make command [m=container]`  ###
###-----------------------------------###

ifeq ($(m),)
  m=server
endif

bash:
	docker-compose exec $(m) /bin/bash

up:
	docker-compose up -d

ps:
	docker-compose ps

build:
	docker-compose build

buildup:
	docker-compose up -d --build --remove-orphans

down:
	docker-compose down

logs:
	docker-compose logs -f $(m)

run:
	docker-compose run $(m) /bin/bash
