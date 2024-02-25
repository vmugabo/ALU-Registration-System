#!/usr/bin/bash

count=0
awk -F ',' '{print $3}' students-list_1023.txt | while read -r email; do
    if ! grep -q "^$email$" student-emails.txt; then
        echo "$email" >> student-emails.txt
        ((count++))
    fi
done

echo "$count number of emails extracted and added to student-emails.txt"

