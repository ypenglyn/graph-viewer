
.PHONY:
	help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build:	## build docker image
	@docker build -t test/viewer:latest .

run:	## test docker images
	@docker run -it --rm --name viewer -p 80:80 test/viewer:latest

login:	## login to docker container with bash
	@docker exec -it viewer bash

clean:	## clean docker containers
	@./clean.sh
