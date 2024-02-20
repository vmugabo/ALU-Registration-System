#!/bin/bash

# Remove the  folder if it exists to include all new changes in the scripts
rm -r negpod_07-q1

# Create directory
mkdir -p negpod_07-q1

# Move the files 
cp main.sh select-emails.sh students-list_1023.txt student-emails.txt negpod_07-q1/

echo "Files moved to directory negpod_07-q1."

