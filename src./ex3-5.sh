#! /bin/sh

call_ls() {
    echo '함수 안으로 들어왔음'

    # 인자가 없을 경우 현재 디렉토리를 사용하도록 설정
    if [ -z "$1" ]; then
        echo "인자가 전달되지 않았습니다. 현재 디렉토리를 표시합니다."
        ls .
    else
        ls "$1"
    fi
}
echo '프로그램을 시작합니다.'
call_ls "$1"
echo '프로그램을 종료합니다.'
exit 0

