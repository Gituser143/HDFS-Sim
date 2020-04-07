#!/bin/zsh
for i in *.txt
do
  cat $i | cut -d "=" -f 2 > $i.new
done
mmv \*.txt.new \#1.txt
