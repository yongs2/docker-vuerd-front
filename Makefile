.PHONY: build
build:
	docker build -t vuerd-front -f Dockerfile .

.PHONY: run
run:
	docker run -d -p 3005:8080 --rm --name vuerd-front vuerd-front || :

.PHONY: exec
exec:
	docker exec -it vuerd-front /bin/bash || :

.PHONY: stop
stop:
	docker stop vuerd-front || :

.PHONY: logs
logs:
	docker logs -f vuerd-front || :
