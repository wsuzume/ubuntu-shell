SOURCE=Dockerfile
IMAGE=ubuntu-shell/ubuntuvm:latest
CONTAINER=ubuntu-vm

# build container
.PHONY: build
build: Dockerfile
	docker image build -f ${SOURCE} -t ${IMAGE} .

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
	docker image rm `docker image ls -q`

