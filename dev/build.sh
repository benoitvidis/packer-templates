#!/usr/bin/env bash

set -o errexit
set -o xtrace

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET=${1-ci-mega.json}
BUILDER=${2-virtualbox}

cd "$DIR"
. ./env.sh

cd ..

make
exec packer build -debug -force -only=$BUILDER $TARGET

