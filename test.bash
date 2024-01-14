#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hibiki Iida
# SPDX-License-Identifier: BSD-3-Clause


ng(){
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out="Hello! 123"
[ "${out}" = 入力された文字数: 10
大文字の数: 1
小文字の数: 4
数字の数: 3
記号の数: 1
空白の数: 1] || ng "$LINENO"

### STRANGE INPUT ###
"out=$(echo あ | ./count)
[ "$?" = 1 ]     || ng {$LINENO}
[ "${out}" = "" ] || ng {$LINENO}

[ "$res" = 0 ] && echo OK
exit $res"
