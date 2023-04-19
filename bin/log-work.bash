#!/bin/bash
# Add a todo item to the todo recutils db
set -e 

datetime="$(date)"
echo "DateTime: $datetime"
echo -n "Description: "
read description;

echo -e "\n## $datetime\n$description" >> $HOME/worklog.txt
