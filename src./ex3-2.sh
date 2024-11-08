#!/bin/sh
read -p "" num1
read -p "" operator 
read -p "" num2
if [ "$operator" = "+" ]; then
    result=$((num1 + num2))
    echo "결과: $result"
elif [ "$operator" = "-" ]; then
    result=$((num1 - num2))
    echo "결과: $result"
else
    echo "올바른 연산자(+) 또는 (-)를 입력하세요."
fi

