#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hibiki Iida
# SPDX-License-Identifier: BSD-3-Clause


ng(){
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
A=e
[ "$A" = e ] || ng "$LINENO"

### STRANGE INPUT ###
exit $res
