#!/bin/sh

file_name=$1

# 디렉토리가 없는 경우 생성
if [ ! -d "$file_name" ]; then
    mkdir "$file_name"
    for i in $(seq 0 4); do
        echo -n "file$i.txt "
    done
    echo "$file_name.tar"
fi

# $file_name 디렉토리로 이동하여 파일 생성
cd "$file_name" || exit 1

for i in $(seq 0 4); do
    touch "file$i.txt"
done

# 상위 디렉토리로 이동하여 tar 파일 생성
cd .. || exit 1
tar -cvf "$file_name.tar" "$file_name"/file0.txt "$file_name"/file1.txt "$file_name"/file2.txt "$file_name"/file3.txt "$file_name"/file4.txt

# 압축을 풀 폴더 생성 후 파일 추출
new_folder="files_extracted"
mkdir "$new_folder"
tar -xf "$file_name.tar" -C "$new_folder"

exit 0

