#!/usr/bin/env bash

gitstatus="$(git status --porcelain | wc -l)"

if [ "$gitstatus" -ne 0 ]
then
    echo "$gitstatus"

    git add --all
    git commit -m "Last sync: $(date +"%Y-%m-%d %H:%M:%S")"
    git pull --rebase
    git push

fi