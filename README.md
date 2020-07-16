# ubuntu-shell
Simple Dockerfile and Makefile which activates a container as an ubuntu shell.

## Usage

Fork this repository as your own and make new empty repository on your GitHub account, like `ubuntu-shell-mirror`.

Then following commands copies this repository to your new empty repository.

```
$ git clone git@github:[your account]/ubuntu-shell.git
$ cd ubuntu-shell
$ git push --mirror git@github.com:[your account]/ubuntu-shell-mirror.git
```

### Commands

`make build` builds the image.

`make shell` enables you to login to the container, mounts `${PWD}/workspace` as `/workspace`.

`make clean` is just an alias of `docker container prune` removes all stopped container.

`make doomsday` removes all images, be careful when you run this command.

## LICENSE
This is free and unencumbered software released into the public domain.
