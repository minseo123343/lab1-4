#!/bin/bash

file_name="DB.txt"
query="$1"  # 첫 번째 인자를 쿼리로 사용

# 쿼리가 전달되지 않으면 에러 메시지 출력
if [ -z "$query" ]; then
    echo "검색할 이름을 입력해주세요."
    exit 1
fi

# DB.txt 파일이 존재하는지 확인
if [ ! -f "$file_name" ]; then
    echo "$file_name 파일이 존재하지 않습니다."
    exit 1
fi

# 파일을 읽어가며 이름이 포함된 줄만 출력
while IFS= read -r line; do
    if [[ "$line" == *"$query"* ]]; then
        echo "$line"
    fi
done < "$file_name"

exit 0

