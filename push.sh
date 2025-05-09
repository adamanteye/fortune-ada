#!/bin/bash

SOURCE_COLOR="\033[33m"
RESET_COLOR="\033[0m"
EXTRA_IDENT=2

content=$(cat content)
source="$1"

content_length=$(
    echo "$content" | awk '{ if (length > max) max = length } END { print max }'
)
spaces=$(printf "%$((content_length + EXTRA_IDENT))s" "")

echo -e "$content\n$spaces$SOURCE_COLOR-- $source$RESET_COLOR\n%" >>ada

sum=$(sha256sum ada | cut -d ' ' -f 1)
sed -i "s|sha256sums=('.*')|sha256sums=('$sum')|" PKGBUILD
