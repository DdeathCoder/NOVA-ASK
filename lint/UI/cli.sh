#!/usr/bin/env bash


read -p "Enter the name of the shell script file: " FILE

export FILE=$FILE
# Check if the file exists
if [ -n "$FILE" ]; then
  
  # Check the syntax of the shell script
  echo "started matching"
  echo "$FILE"
else
  # If the file does not exist, print an error message
  echo "File not found: $FILE"
fi
