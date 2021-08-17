DOCKER_IMG=lalamove/mysql_client
DOCKER_IMG_TAG=5.6

build:
	docker build -t ${DOCKER_IMG}:${DOCKER_IMG_TAG} - < Dockerfile
	docker images | grep ${DOCKER_IMG} | grep ${DOCKER_IMG_TAG}

push:
	docker push ${DOCKER_IMG}:${DOCKER_IMG_TAG}
