SOURCE=Dockerfile
IMAGE=ubuntu-shell/ubuntuvm:latest
CONTAINER=ubuntu-vm

# build container
build: Dockerfile
	docker image build -f ${SOURCE} -t ${IMAGE} .

# create new container and login to the shell
shell:
	docker container run -it --rm -v ${PWD}/workspace:/workspace ${IMAGE}

# clean up all stopped containers
clean:
	docker container prune

# delete all image
doomsday:
	docker image rm `docker image ls -q`

