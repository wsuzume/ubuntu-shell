# ubuntu-shell
Simple Dockerfile and Makefile which activates a container as an ubuntu shell.

## Usage

`make build` builds the image.

`make shell` enables you to login the container, mounts `${PWD}/workspace` as `/workspace`.

`make clean` is just an alias of `docker container prune` removes all stopped container.

`make doomsday` removes all images, be careful when you run this command.
