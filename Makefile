#!make

help: _header
	${info }
	@echo Opciones:
	@echo -----------------
	@echo start / stop / restart
	@echo workspace
	@echo logs
	@echo stats
	@echo clean
	@echo -----------------

_header:
	@echo --------
	@echo Superset
	@echo --------

_urls: _header
	${info }
	@echo --------------------------------
	@echo [Superset] http://localhost:8088
	@echo --------------------------------

_start-command:
	@docker compose up -d --remove-orphans superset

start: _header _start-command _urls

stop:
	@docker compose stop

restart: stop start

workspace:
	@docker compose exec superset /bin/bash

logs:
	@docker compose logs superset

stats:
	@docker stats

clean:
	@docker compose down -t 0 -v --remove-orphans
