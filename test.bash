#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hibiki Iida
# SPDX-License-Identifier: BSD-3-Clause


ng(){
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(echo "Hello! 123" | ./count)
[ "${out}" = '
文字列を入力 :
入力された文字数: 10
大文字の数      : 1
小文字の数      : 4
数字の数        : 3
空白の数        : 1
その他          : 1' ] || ng "$LINENO"

### STRANGE INPUT ###


exit $res
