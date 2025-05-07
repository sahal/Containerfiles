#!/usr/bin/env bash

set -o errexit
set -o nounset

# some dependencies require https connections to github?
git config --global http.sslCAInfo /home/node/github.cer

#mkdir -p joplin
# no need to see the output of this
#tar xf joplin.tar.gz -C joplin &>/dev/null

cd joplin

JOPLIN_VER_DIR=$(find . -maxdepth 1 -type d -name "joplin*")
cd "${JOPLIN_VER_DIR}"

corepack enable

echo "Joplin ${JOPLIN_VER_DIR}"
echo "Node $( node -v )"
echo "Yarn $( yarn -v )"
echo "Debian version $(cat /etc/debian_version)"
echo "Kernel Version $(uname -r)"

export BUILD_SEQUENCIAL=1
export RUN_TESTS=0
export ELECTRON_SKIP_BINARY_DOWNLOAD=1
export SHARP_IGNORE_GLOBAL_LIBVIPS=1
export IS_CONTINUOUS_INTEGRATION=1

pushd packages
yarn remove canvas || true
popd
yarn install --inline-builds

