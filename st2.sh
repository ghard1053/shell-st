#!/bin/sh

: ${1?'引数を指定してください'}

: ${CFLAGS='-02 -fomit-frame-pointer'}

: > file

> file


. "$HOME"/.profile

# src_test
TEST_VAL=hello

TEST_VAL=
. ./src_test
echo "$TEST_VAL" # hello

TEST_VAL=
./src_test
echo "$TEST_VAL" # 

