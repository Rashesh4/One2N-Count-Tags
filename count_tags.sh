#!/bin/bash 
echo "Top 5 most common tags:"
grep -hr "tags:" nuclei-templates-9.7.8 \
    | sed 's/tags: //' \
    | tr -d ' ' \
    | tr ',' '\n' \
    | sort \
    | uniq -c \
    | sort -nr \
    | head -n 5