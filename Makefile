SOURCE=Dockerfile
IMAGE=wsuzume/ubuntu-vm:latest

# build container image
.PHONY: image
image: Dockerfile
	docker image build -f ${SOURCE} -t ${IMAGE} .

.PHONY: pull
pull:
	docker pull ${IMAGE}

.PHONY: push
push:
	docker push ${IMAGE}

# create new container and login to the shell
.PHONY: shell
shell:
	docker container run -it --rm -v ${PWD}/workspace:/workspace ${IMAGE}

# clean up all stopped containers
.PHONY: clean
clean:
	docker container prune

# delete all image
.PHONY: doomsday
doomsday:
	docker image rm -f `docker image ls -q`

