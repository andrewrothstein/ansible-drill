#!/usr/bin/env sh
MIRROR=https://www.apache.org/dist/drill

dl_ver() {
    local ver=$1
    local url=$MIRROR/drill-${ver}/apache-drill-${ver}.tar.gz.sha512
    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSL $url)
}

dl_ver ${1:-1.17.0}
