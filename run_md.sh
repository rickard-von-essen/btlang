#!/bin/bash

FILES=`find . -name "*.md" | sed -e 's/\(.*\)\.md/\1/'`

for file in $FILES; do
	markdown ${file}.md > ${file}.html
done
