#!/bin/bash

find . -name 'project_resource\[*]_dev.yaml' -print0 |
while IFS= read -r -d '' file; do
echo $file
file1=${file%????????}
file2=$file1'prod.yaml'
echo  "$file" ',' "$file2"
mv -f "$file" "$file2"

done
