IMAGE_NAME=flask-books-app
CONTAINER_NAME=flask-books-container
PORT=5000

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d -p $(PORT):5000 --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME) || true
	docker rm $(CONTAINER_NAME) || true

restart: stop build run

shell:
	docker exec -it $(CONTAINER_NAME) /bin/bash

clean:
	docker rmi -f $(IMAGE_NAME) || true
