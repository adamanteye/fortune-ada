#!/bin/bash

SOURCE_COLOR="\033[33m"
TITLE_COLOR="\033[32m"
RESET_COLOR="\033[0m"
EXTRA_IDENT=2

content=$(cat content)
source="$1"
title="$2"

content_length=$(
    echo -e "$title\n$content" | awk '{ if (length > max) max = length } END { print max }'
)
spaces=$(printf "%$((content_length + EXTRA_IDENT))s" "")

if [ -n $title ]; then
    echo -e -n "$TITLE_COLOR$title$RESET_COLOR\n" >>ada
fi

echo -e "$content\n$spaces$SOURCE_COLOR-- $source$RESET_COLOR\n%" >>ada

sum=$(sha256sum ada | cut -d ' ' -f 1)
sed -i "s|sha256sums=('.*')|sha256sums=('$sum')|" PKGBUILD
