#!/usr/bin/bash

awk -F ',' '{print $3}' students-list_1023.txt | while read -r email; do
    if ! grep -q "^$email$" student-emails.txt; then
        echo "$email" >> student-emails.txt
        echo "$email extracted and saved to student-emails.txt"
    else
        echo "$email already in student-emails.txt"
    fi
done

