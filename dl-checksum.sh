#!/usr/bin/env sh
set -e
MIRROR=https://dlcdn.apache.org/drill
DIR=~/Downloads

# https://dlcdn.apache.org/drill/1.21.1/apache-drill-1.21.1.tar.gz

dl_ver() {
    local ver=$1
    local f="apache-drill-${ver}.tar.gz"
    local url="${MIRROR}/${ver}/${f}"
    local l="${DIR}/${f}"
    if [ ! -e $l ];
    then
        curl -sSLf -o $l $url
    fi
    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $l | awk '{print $1}')
}

dl_ver ${1:-1.21.1}
