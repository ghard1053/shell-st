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

source file


eval echo \"\$$var\"

exec myprog

if [ ! -f "$1" ]
then
  echo "$1"'ファイルが存在しません'
  exit 1
fi
cp -p "$1" "$1".bak
exit 0

LANG=ja_JP.eucJP
export LANG

TEXT=hello
echo "$TEXT"
printenv TEXT
export TEXT
printenv TEXT

export LANG
LANG=ja_JP.eucJP

CFLAGS='-02 -fomit-frame-pointer'
LANG=ja_JP.eucJP
export CFLAGS LANG

TEXT=hello; export TEXT
printenv TEXT
# hello
unset TEXT
printenv TEXT
echo "$TEXT"

export LANG=ja_JP.eucJP

echo -n 'prompt> ' 1>&2
read input

DIR=/usr/local
readonly DIR

func()
{
  if [ ! -f "$1" ]; then
    echo "$1"'ファイルが存在しません'
    return 1
  fi
  cp -p "$1" "$1".bak
  return 0
}

while [ $# -gt 0 ]
do
  echo "$1"
  shift
done

i=123
printf 'sum %d\n' "$1"

dir=`pwd`
echo "$dir"

if [ "$i" -le 3 ]
then
  echo 'i <= 3'
fi

if [ $# -lt 1 ]; then
  exit 1
fi

[ -f /some/dir/file ]
echo $?

cmp -s file1 file2
status=$?
echo 'compare'
exit "$status"
