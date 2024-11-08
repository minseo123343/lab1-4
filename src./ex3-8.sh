#!/bin/bash

file_name="DB.txt"

# DB.txt 파일이 없으면 새로 생성
if [ ! -f $file_name ]; then
    touch $file_name
fi

# 입력된 인자들 출력
if [ $# -eq 0 ]; then
    echo "입력된 인자가 없습니다."
else
    echo "입력된 인자들: $@"  # 인자들 출력
    echo "$@" >> $file_name  # DB.txt에 인자 추가
fi

exit 0

