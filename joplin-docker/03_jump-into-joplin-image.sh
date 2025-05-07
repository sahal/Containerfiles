#! /usr/bin/env bash

set -o errexit
set -o nounset

image_name="${1:-joplin-build-node-23}"

podman run -it \
	--entrypoint /bin/bash \
	-v /home/sahal/code/joplin-build-script/build-joplin-docker/joplin/:/home/node/joplin/:rw \
	"${image_name}"

