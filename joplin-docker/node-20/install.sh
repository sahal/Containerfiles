#!/usr/bin/env bash

set -o errexit
set -o nounset

# some dependencies require https connections to github?
git config --global http.sslCAInfo /home/node/github.cer

mkdir -p joplin
# no need to see the output of this
tar xf joplin.tar.gz -C joplin &>/dev/null

cd joplin

JOPLIN_VER_DIR=$(find . -maxdepth 1 -type d -name "joplin*")
cd "${JOPLIN_VER_DIR}"

yarn_bin="$(find .yarn/releases -type f -name "*.cjs")"

echo "Node $( node -v )"
echo "Yarn $( ${yarn_bin} -v )"
echo "Debian version $(cat /etc/debian_version)"
echo "Kernel Version $(uname -r)"

"${yarn_bin}" install --inline-builds

