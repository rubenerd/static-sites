#!/bin/sh

######
## Install script
## Git can't clone into a directory unless its empty, so create symlinks

## Get current directory (thanks https://stackoverflow.com/a/1482133)
_PWD=`dirname "$(readlink -f "$0")"`

for _DIR in *; do
    [ -d "$_DIR" ] && ln -s "$_PWD/$_DIR" ../
done
