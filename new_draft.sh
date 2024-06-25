#!/bin/bash
echo "Enter the title of the post: "
read title

echo "Enter the author of the post ['Erik Bj&auml;reholt']: "
read author
if [ -z "$author" ]
then
    author="Erik Bj&auml;reholt"
fi

echo "---
layout: post
title: \"$title\"
author: \"$author\"
created: $(date +'%Y-%m-%d %H:%M')
status: In Progress
categories: $categories
---" > "_drafts/$(date +'%Y-%m-%d')-${title// /-}.md"
