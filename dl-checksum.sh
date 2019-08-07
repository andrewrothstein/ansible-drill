#!/usr/bin/env sh
VER=1.16.0
URL=https://www.apache.org/dist/drill/drill-${VER}/apache-drill-${VER}.tar.gz.sha512
printf "  # %s\n" $URL
printf "  '%s': sha512:%s\n" $VER `curl -sSL $URL`
