#!/bin/bash

# Prompt the user to enter the name of a file
read -p "Enter the name of a file: " file

# Check if the file exists
if [ -f "$file" ]; then
  # If the file exists, prompt the user to enter text to search for
  read -p "Enter text to search for: " text

  # Use grep to search for the text and save the results to pattern.txt
  grep -i "$text" "$file" > pattern.txt
else
  echo "File not found"
fi

