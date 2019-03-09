#!/bin/sh

test -f file1 && cp file1 file2

cmp -s file1 file2 && {
  echo 'delete file2'
  rm -f file2
}

test -f file1 || exit 1

test -f file1 || {
  echo 'not exist file1'
  exit 1
}


if [ "$i" -eq 3 ]
then
  echo 'i = 3'
elif [ "$i" -eq 5 ]
then
  echo 'i = 5'
else
  echo 'i != 3 or 5'
fi

if cmp -s file1 file2
then
  echo 'file1 == file2'
else
  echo 'file1 != file2'
fi

cmp -s file1 file2
if [ $? -eq 0 ]
then
  echo 'file1 == file2'
fi

if cmp -s file1 file2
then
  :
else
  echo 'file1 != file2'
fi


case $1 in
  start)
    echo 'start'
    ;;
  stop)
    echo 'stop'
    ;;
  *)
    echo 'start or stop'
    ;;
esac

case `uname -s` in
  Linux)
    echo 'OS: Linux'
    ;;
  FreeBSD)
    echo 'OS: FreeBSD'
    ;;
  Sun OS)
    echo 'OS: Solaris'
    ;;
  *)
    echo 'other'
    ;;
esac

case `uname -s` in
  Linux|FreeBSD)
    echo 'OS: Linux or FreeBSD'
    ;;
  *)
    echo 'other'
    ;;
esac

case $string in
  [a-z])
    echo ''
    ;;
  ?)
    echo ''
    ;;
  file*)
    echo ''
    ;;
  *)
    echo 'other'
    ;;
esac


for file in memo.txt prog.c figure.png
do
  cp -p "$file" "$file".bak
done

for file in *
do
  cp -p "$file" "$file".bak
done

for file in `cat filelist`
do
  cp -p "$file" "$file".bak
done

for file in "$@"
do
  cp -p "$file" "$file".bak
done

for file in *
{
  case $file in
    *.bak)
      continue
      ;;
  esac
  cp -p "$file" "$file".bak
}


sum=0
for ((i = 1; i <= 100; i++)) {
  ((sum += i))
}
echo "$sum"

for ((sum = 0, i = 1; i <= 100; i++)) {
  ((sum += i))
}
echo $((sum))

sum=0
i=1
while [ "$i" -le 100 ]
do
  sum=`expr "$sum" + "$i"`
  i=`expr "$i" + 1`
done
echo "$sum"

while [ $# -gt 0 ]
do
  cp -p "$1" "$1".bak
  shift
done