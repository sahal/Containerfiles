#!/usr/bin/env bash

set -o errexit
set -o nounset


#for ver in 18 19 20 21 22 23; do
for ver in 23; do
#  podman run -it --entrypoint /home/node/install.sh "joplin-build-node-${ver}"
  podman run -it --entrypoint /home/node/install.sh \
    -v /home/sahal/code/docker/joplin-docker/joplin/:/home/node/joplin/:rw "joplin-build-node-${ver}"
done

