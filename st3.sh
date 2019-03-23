#!/bin/sh

cp file "${1:-/tmp}"

if [ -n "$1" ]
then
  cp file "$1"
else
  cp file /tmp
fi


cp file "${TMPDIR:=/tmp}"

if [ -z "$TMPDIR" ]
then
  TMPDIR=/tmp
fi
cp file "$TMPDIR"

: ${TMPDIR:=/tmp}
cp file "$TMPDIR"


cp "${1:?notfound}" /tmp

if [ -z "$1" ]
then
  echo 'not found'
  exit 1
fi
cp "$1" /tmp

: ${1:?notfound}
cp "$1" /tmp


LD_LIBRARY_PATH=/usr/local/myapp/lib${LD_LIBRARY_PATH:+:}$LD_LIBRARY_PATH
export LD_LIBRARY_PATH


dir=/usr/local/bin
echo "${dir##*/}"
# bin
basename "$dir"
# bin

file=backup.tar.gz
echo "${file#*.}"
# tar.gz
echo "${file##*.}"
# gz


dir=/usr/local/bin
echo "${dir%/*}"
# /usr/local
dirname "$dir"
# /usr/local

file=backup.tar.gz
echo "${file%.*}"
# backup.tar
echo "${file%%.*}"
# backup


message='Hello World'
echo "${message:2}"
# llo World
echo "${message:2:5}"
# llo W


message='Hello World'
echo "${message/l/X}"
# HeXlo World
echo "${message//l/X}"
# HeXXo WorXd

