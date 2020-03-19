#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

NGX_WORKSPACE=./buildpath

./auto/configure --prefix="$NGX_WORKSPACE" --without-http_rewrite_module --without-http_gzip_module --without-http-cache --with-debug

test -d "$NGX_WORKSPACE" || mkdir "$NGX_WORKSPACE"
test -d "$NGX_WORKSPACE/logs" || mkdir "$NGX_WORKSPACE/logs"
test -d "$NGX_WORKSPACE/conf" || cp -r conf/ "$NGX_WORKSPACE/conf"
