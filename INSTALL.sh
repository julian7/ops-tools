#!/usr/bin/env bash

cd "${0%/*}"

prevdir=""
find bin -type f | while read name; do
    dir="${name%/*}"
    bname="${name##*/}"

    if [[ "$dir" != "$prevdir" ]]; then
        mkdir -p "$HOME/$dir"
    fi

    ln -sf "$PWD/$name" "$HOME/$name"
done
