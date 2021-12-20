#!/usr/bin/env bash

gitstatus="$(git status --porcelain | wc -l)"

if [ "$gitstatus" -ne 0 ]
then

    git add --all
    git commit -m "Last sync: $(date +"%Y-%m-%d %H:%M:%S")"
    git pull --rebase
    sleep 5
    git push

fi