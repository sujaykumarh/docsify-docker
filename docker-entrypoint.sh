#!/bin/sh

# ##############################################################
# Copyright (c) 2021 Sujaykumar.Hublikar <hello@sujaykumarh.com>
# Licensed under the Apache License, Version 2.0
# ##############################################################

# Run Shell profile
source /etc/profile

echo "" # empty line

##
# Run command or docsify
##

set -e

toRun="$@"
cmd="$1"

# Run default docsify command if not found
if [ ! -f "$cmd" ]; then
    if [ "$2" ]; then
        set -- /usr/local/bin/docsify "$@"
    else
        set -- /usr/local/bin/docsify "$@" /docs
    fi
fi

# check if npm command
if [ "npm" == "$cmd" ];then
    set -- ""
    set -- /usr/local/bin/npm "${toRun:4}"
fi


# Run command
echo "will exec command: \$ $@"
exec "$@"
