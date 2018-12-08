#!/usr/bin/env bash

try() {
    expected="$1"
    input="$2"

    gcc -static -o 9cc 9cc.c
    ./9cc "$input" > tmp.s
    gcc -static -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" == "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input expected, but got $actual"
        exit 1
    fi
}

try 0 0
try 42 42
try 21 '5+20-4'

echo OK
