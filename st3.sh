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