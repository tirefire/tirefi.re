.PHONY: all fire-up fire-down
.SILENT: banner help

SHELL := /bin/bash
DOCKERCOMPOSE:= $(shell command -v docker-compose 2> /dev/null)

default: help

banner:
	echo ""
	echo "       )                     (                           "
	echo "    ( /(   (    (       (    )\ )   (        (       (   "
	echo "    )\())  )\   )(     ))\  (()/(   )\       )(     ))\  "
	echo "   (_))/  ((_) (()\   /((_)  /(_)) ((_)     (()\   /((_) "
	echo "   | |_    (_)  ((_) (_))   (_) _|  (_)      ((_) (_))   "
	echo "   |  _|   | | | '_| / -_)   |  _|  | |  _  | '_| / -_)  "
	echo "    \__|   |_| |_|   \___|   |_|    |_| (_) |_|   \___|  "
	echo ""

help: banner
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

preflight:
ifndef DOCKERCOMPOSE
	$(error "docker-compose not found in PATH - is it installed?")
endif

fire-up: preflight ## Run docker-compose up -d
	@docker-compose up -d && \
		sleep 30 && \
		open "http://0.0.0.0:4000/"

fire-upd: preflight ## Run docker-compose run tirefire depends update
	@docker-compose run tirefire \
		depends update

fire-ps: preflight ## Run docker-compose ps
	@docker-compose ps

fire-down: preflight ## Run docker-compose down
	@docker-compose down

fire-rm: preflight ## Run docker-compose rm --force
	@docker-compose rm --force

fire-logs: preflight ## Run docker-compose logs
	@docker-compose logs

fire-stop: preflight ## Run docker-compose stop
	@docker-compose stop
