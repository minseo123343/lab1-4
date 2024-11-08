#!/bin/sh

read -p "몇 번 출력할까요? " count

for i in $(seq 1 $count)
do
    echo "hello world"
done
