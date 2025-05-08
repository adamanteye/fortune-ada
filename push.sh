#!/bin/bash

SOURCE_COLOR="\033[33m"
RESET_COLOR="\033[0m"
EXTRA_IDENT=2

content=$1
source=$2

content_length=$(echo -n "$content" | wc -m)
spaces=$(printf "%$((content_length + EXTRA_IDENT))s" "")

echo -e "$content\n$spaces$SOURCE_COLOR-- $source$RESET_COLOR\n%"
